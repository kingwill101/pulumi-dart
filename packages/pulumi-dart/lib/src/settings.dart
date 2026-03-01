import 'dart:async';
import 'dart:io';
import 'package:grpc/grpc.dart';
import 'package:pulumi/src/pulumirpc/pulumi/engine.pbgrpc.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/resource/component_resource.dart';
import 'package:path/path.dart' as path;

import 'callback_server.dart';

/// {@template pulumi.runtime.summary}
/// Global runtime host state for Pulumi program execution.
///
/// This singleton coordinates monitor/engine connectivity, callback server
/// lifecycle, and runtime feature support probes.
/// {@endtemplate}
///
class Runtime {
  static final Runtime _instance = Runtime._internal();

  /// Returns the process-wide runtime singleton.
  factory Runtime() => _instance;
  Runtime._internal();

  /// Runtime settings.
  Settings settings = Settings();
  ResourceMonitorClient? _monitor;
  ClientChannel? _monitorChannel;
  EngineClient? _engine;
  ClientChannel? _engineChannel;

  /// Feature support flags populated from monitor probes.
  bool supportsSecrets = false;

  /// Supports resource reference serialization/deserialization.
  bool supportsResourceReferences = false;

  /// Supports output-value envelopes from monitor.
  bool supportsOutputValues = false;

  /// Supports `deletedWith` resource option.
  bool supportsDeletedWith = false;

  /// Supports alias spec payloads.
  bool supportsAliasSpecs = false;

  /// Supports resource transforms.
  bool supportsTransforms = false;

  /// Supports invoke transforms.
  bool supportsInvokeTransforms = false;

  /// Callback server used for transform/hook callbacks.
  ICallbackServer? callbacks;

  /// Root stack resource for the current run.
  ComponentResource? stackResource;
  int _activeRpcKeepAlives = 0;
  Completer<void>? _rpcDrainCompleter;

  static const int maxRPCMessageSize = 1024 * 1024 * 400; // 400 MB

  /// Whether deployment is running in preview mode.
  bool get isDryRun => settings.dryRun;

  /// Whether query mode is enabled.
  bool get isQueryMode => settings.queryMode;

  /// Whether legacy apply semantics are enabled.
  bool get isLegacyApplyEnabled => settings.legacyApply;

  /// Whether dynamic providers should be cached.
  bool get cacheDynamicProviders => settings.cacheDynamicProviders;

  /// Organization name, if available.
  ///
  /// Throws if missing in non-test contexts.
  String get organization {
    if (settings.organization != null) {
      return settings.organization!;
    }
    throw Exception(
      "Missing organization name; for test mode, please call `pulumi.runtime.setMocks`",
    );
  }

  /// Current project name.
  String get project => settings.project ?? "";

  /// Current stack name.
  String get stack => settings.stack ?? "";

  /// Whether monitor client is connected/configured.
  bool get hasMonitor => _monitor != null && settings.monitorAddr != null;

  /// Whether engine client is connected/configured.
  bool get hasEngine => _engine != null && settings.engineAddr != null;

  /// Returns a connected resource monitor client, creating one if needed.
  ResourceMonitorClient? getMonitor() {
    if (_monitor == null && settings.monitorAddr != null) {
      final endpoint = _GrpcEndpoint.parse(settings.monitorAddr!);
      _monitorChannel = ClientChannel(
        endpoint.host,
        port: endpoint.port,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          codecRegistry: CodecRegistry(
            codecs: const [GzipCodec(), IdentityCodec()],
          ),
          // settings:
          //     ConnectionSettings(maxReceiveMessageLength: maxRPCMessageSize),
        ),
      );
      _monitor = ResourceMonitorClient(_monitorChannel!);
    }
    return _monitor;
  }

  /// Returns a connected engine client, creating one if needed.
  EngineClient? getEngine() {
    if (_engine == null && settings.engineAddr != null) {
      final endpoint = _GrpcEndpoint.parse(settings.engineAddr!);
      _engineChannel = ClientChannel(
        endpoint.host,
        port: endpoint.port,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          codecRegistry: CodecRegistry(
            codecs: const [GzipCodec(), IdentityCodec()],
          ),
          // settings:
          //     ConnectionSettings(maxReceiveMessageLength: maxRPCMessageSize),
        ),
      );
      _engine = EngineClient(_engineChannel!);
    }
    return _engine;
  }

  /// Populates feature support flags by probing the monitor.
  Future<void> awaitFeatureSupport() async {
    final monitor = getMonitor();
    if (monitor != null) {
      supportsSecrets = await _monitorSupportsFeature(monitor, 'secrets');
      supportsResourceReferences = await _monitorSupportsFeature(
        monitor,
        'resourceReferences',
      );
      supportsOutputValues = await _monitorSupportsFeature(
        monitor,
        'outputValues',
      );
      supportsDeletedWith = await _monitorSupportsFeature(
        monitor,
        'deletedWith',
      );
      supportsAliasSpecs = await _monitorSupportsFeature(monitor, 'aliasSpecs');
      supportsTransforms = await _monitorSupportsFeature(monitor, 'transforms');
      supportsInvokeTransforms = await _monitorSupportsFeature(
        monitor,
        'invokeTransforms',
      );
    }
  }

  Future<bool> _monitorSupportsFeature(
    ResourceMonitorClient monitor,
    String feature,
  ) async {
    try {
      final response = await monitor.supportsFeature(
        SupportsFeatureRequest()..id = feature,
      );
      return response.hasSupport;
    } catch (e) {
      if (e is GrpcError && e.code == StatusCode.unimplemented) {
        return false;
      }
      rethrow;
    }
  }

  /// Resets runtime options and drops existing RPC clients/callback servers.
  void resetOptions({
    String? project,
    String? stack,
    int? parallel,
    String? engineAddr,
    String? monitorAddr,
    bool? preview,
    String? organization,
  }) {
    _monitor = null;
    _monitorChannel = null;
    _engine = null;
    _engineChannel = null;
    callbacks = null;
    settings = Settings(
      project: project ?? settings.project,
      stack: stack ?? settings.stack,
      parallel: parallel ?? settings.parallel,
      engineAddr: engineAddr ?? settings.engineAddr,
      monitorAddr: monitorAddr ?? settings.monitorAddr,
      dryRun: preview ?? settings.dryRun,
      organization: organization ?? settings.organization,
    );
    supportsSecrets = false;
    supportsResourceReferences = false;
    supportsOutputValues = false;
    supportsDeletedWith = false;
    supportsAliasSpecs = false;
    supportsTransforms = false;
    supportsInvokeTransforms = false;
    stackResource = null;
  }

  /// Configures test/mock mode and replaces monitor client.
  void setMockOptions(
    dynamic mockMonitor, {
    String? project,
    String? stack,
    bool? preview,
    String? organization,
  }) {
    resetOptions(
      project: project ?? this.project,
      stack: stack ?? this.stack,
      preview: preview ?? isDryRun,
      organization: organization ?? this.organization,
    );
    _monitor = mockMonitor;
  }

  /// Waits for any asynchronous stack-level transform registrations.
  Future<void> awaitStackRegistrations() async {
    if (callbacks != null) {
      await callbacks!.awaitStackRegistrations();
    }
  }

  /// Returns the callback server, creating one when monitor is available.
  ICallbackServer? getCallbacks() {
    if (callbacks != null) {
      return callbacks;
    }

    final monitorRef = getMonitor();
    if (monitorRef == null) {
      return null;
    }

    callbacks = CallbackServer(monitorRef);
    return callbacks;
  }

  /// Returns synchronous invoke file handles when sync mode is enabled.
  SyncInvokes? tryGetSyncInvokes() {
    if (settings.syncDir != null) {
      final requestsFile = File(path.join(settings.syncDir!, 'invoke_req'));
      final responsesFile = File(path.join(settings.syncDir!, 'invoke_res'));
      return SyncInvokes(
        requests: requestsFile.openSync(mode: FileMode.writeOnly),
        responses: responsesFile.openSync(mode: FileMode.read),
      );
    }
    return null;
  }

  /// Whether RPC operations should be serialized.
  bool serialize() => settings.parallel == 1;

  /// Alias for immediate RPC termination.
  void terminateRpcs() {
    disconnectSync();
  }

  /// Waits for in-flight RPCs then disconnects clients.
  Future<void> disconnect() async {
    await _waitForRPCs(disconnectFromServers: true);
  }

  Future<void> _waitForRPCs({bool disconnectFromServers = false}) async {
    while (_activeRpcKeepAlives > 0) {
      final drainCompleter = _rpcDrainCompleter;
      if (drainCompleter == null) {
        break;
      }
      await drainCompleter.future;
    }
    if (disconnectFromServers) {
      disconnectSync();
    }
  }

  /// Immediately disconnects callback server and gRPC channels.
  void disconnectSync() {
    _activeRpcKeepAlives = 0;
    _rpcDrainCompleter?.complete();
    _rpcDrainCompleter = null;

    callbacks?.shutdown();
    callbacks = null;

    unawaited(_monitorChannel?.shutdown());
    _monitor = null;
    _monitorChannel = null;

    unawaited(_engineChannel?.shutdown());
    _engine = null;
    _engineChannel = null;
  }

  /// Creates a keep-alive token for an in-flight RPC operation.
  ///
  /// The returned callback must be invoked when the RPC completes.
  void Function() rpcKeepAlive() {
    _activeRpcKeepAlives += 1;
    _rpcDrainCompleter ??= Completer<void>();

    var released = false;
    return () {
      if (released) {
        return;
      }
      released = true;

      if (_activeRpcKeepAlives == 0) {
        return;
      }

      _activeRpcKeepAlives -= 1;
      if (_activeRpcKeepAlives == 0) {
        _rpcDrainCompleter?.complete();
        _rpcDrainCompleter = null;
      }
    };
  }

  /// Sets the deployment root resource on the Pulumi engine.
  Future<void> setRootResource(ComponentResource res) async {
    await awaitFeatureSupport();

    final engineRef = getEngine();
    if (engineRef == null) {
      return;
    }

    final urn = await res.urn.getValue();
    final request = SetRootResourceRequest()..urn = urn;

    try {
      await engineRef.setRootResource(request);
    } catch (e) {
      if (e is GrpcError && e.code == StatusCode.unimplemented) {
        // Back-compat case - ignore if the engine doesn't support this operation
        return;
      }
      rethrow;
    }
  }
}

/// Mutable runtime settings derived from environment and test overrides.
class Settings {
  /// Project name.
  String? project;

  /// Stack name.
  String? stack;

  /// Parallelism level.
  int? parallel;

  /// Engine gRPC address.
  String? engineAddr;

  /// Monitor gRPC address.
  String? monitorAddr;

  /// Whether preview mode is enabled.
  bool dryRun;

  /// Whether test mode is enabled.
  bool testModeEnabled;

  /// Whether query mode is enabled.
  bool queryMode;

  /// Whether legacy apply behavior is enabled.
  bool legacyApply;

  /// Whether dynamic provider caching is enabled.
  bool cacheDynamicProviders;

  /// Organization name.
  String? organization;

  /// Directory for synchronous invoke IPC files.
  String? syncDir;

  Settings({
    this.project,
    this.stack,
    this.parallel,
    this.engineAddr,
    this.monitorAddr,
    this.dryRun = false,
    this.testModeEnabled = false,
    this.queryMode = false,
    this.legacyApply = false,
    this.cacheDynamicProviders = true,
    this.organization,
    this.syncDir,
  });
}

/// File handles used for synchronous invoke request/response plumbing.
class SyncInvokes {
  final RandomAccessFile requests;
  final RandomAccessFile responses;

  SyncInvokes({required this.requests, required this.responses});
}

/// Parsed host/port gRPC endpoint.
class _GrpcEndpoint {
  final String host;
  final int port;

  const _GrpcEndpoint({required this.host, required this.port});

  static _GrpcEndpoint parse(String address) {
    final normalizedAddress =
        address.startsWith('http://') || address.startsWith('https://')
        ? address
        : 'http://$address';

    final uri = Uri.parse(normalizedAddress);
    if (uri.host.isEmpty || uri.port == 0) {
      throw StateError('Invalid gRPC endpoint: $address');
    }
    return _GrpcEndpoint(host: uri.host, port: uri.port);
  }
}
