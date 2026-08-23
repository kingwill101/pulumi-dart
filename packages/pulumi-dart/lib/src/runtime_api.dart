import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';

import 'deployment/deployment.dart';
import 'engine.dart';
import 'engine_logger.dart';
import 'monitor.dart' as mon;
import 'output.dart';
import 'pulumirpc/pulumi/provider.pb.dart';
import 'pulumirpc/pulumi/resource.pbgrpc.dart';
import 'resource/resource.dart';
import 'struct_converter.dart';

class MockResourceArgs {
  /// Pulumi type token being registered.
  final String type;

  /// Logical resource name.
  final String name;

  /// Resolved input properties.
  final Map<String, dynamic> inputs;

  /// Provider reference when present.
  final String? provider;

  /// Existing import/read ID when present.
  final String? id;

  /// Whether this resource is custom.
  final bool custom;

  const MockResourceArgs({
    required this.type,
    required this.name,
    required this.inputs,
    this.provider,
    this.id,
    required this.custom,
  });
}

class MockCallArgs {
  /// Invoke token.
  final String token;

  /// Resolved invoke arguments.
  final Map<String, dynamic> args;

  /// Provider reference when present.
  final String? provider;

  const MockCallArgs({required this.token, required this.args, this.provider});
}

class MockRegisterResourceOutputsRequest {
  /// Target resource URN.
  final String urn;

  /// Registered output properties.
  final Map<String, Output<dynamic>> outputs;

  const MockRegisterResourceOutputsRequest({
    required this.urn,
    required this.outputs,
  });
}

abstract class Mocks {
  /// Handles resource registration/read events in mock mode.
  Future<(String?, Map<String, dynamic>)> newResource(MockResourceArgs args);

  /// Handles invoke/call events in mock mode.
  Future<Map<String, dynamic>> call(MockCallArgs args);

  /// Optional hook for stack output registration.
  Future<void> registerResourceOutputs(
    MockRegisterResourceOutputsRequest args,
  ) async {}
}

/// Public runtime facade for configuring Pulumi test mocks.
class RuntimeFacade {
  const RuntimeFacade();

  /// Installs a mock-backed deployment instance for test execution.
  void setMocks(
    Mocks mocks, {
    String? project,
    String? stack,
    bool? preview,
    String? organization,
  }) {
    final deployment = DeploymentImpl.createForMocks(
      organizationName: organization ?? 'organization',
      projectName: project ?? 'project',
      stackName: stack ?? 'stack',
      isDryRun: preview ?? false,
      monitor: _MockMonitor(mocks),
      engine: _MockEngine(),
    );
    DeploymentImpl.setTestInstance(deployment);
  }

  /// Clears active mock deployment state.
  void clearMocks() {
    DeploymentImpl.clearMockInstance();
  }
}

/// Runtime testing facade, exposed as `pulumi.runtime`.
const RuntimeFacade runtime = RuntimeFacade();

class _MockEngine implements Engine {
  @override
  Future<void> log(LogRequest request) async {}
}

class _MockMonitor implements mon.Monitor {
  final Mocks _mocks;
  final Map<String, dynamic> _registeredResources = {};

  _MockMonitor(this._mocks);

  @override
  ResourceMonitorClient get client =>
      throw StateError('_MockMonitor.client is not used by this harness');

  @override
  Future<ResourceInvokeResponse> invoke(ResourceInvokeRequest request) async {
    final args = _toDartMap(request.args);

    if (request.tok == 'pulumi:pulumi:getResource') {
      final urn = args['urn'] as String;
      final registeredResource = _registeredResources[urn];
      if (registeredResource == null) {
        throw Exception('Unknown resource $urn');
      }
      return ResourceInvokeResponse(
        return_1: await _serializeAsync(registeredResource),
      );
    }

    final result = await _mocks.call(
      MockCallArgs(token: request.tok, args: args, provider: request.provider),
    );
    return ResourceInvokeResponse(return_1: await _serializeAsync(result));
  }

  @override
  Future<CallResponse> call(ResourceCallRequest request) async {
    final args = _toDartMap(request.args);

    final result = await _mocks.call(
      MockCallArgs(token: request.tok, args: args, provider: request.provider),
    );
    return CallResponse(return_1: await _serializeAsync(result));
  }

  @override
  Future<RegisterPackageResponse> registerPackage(
    RegisterPackageRequest request,
  ) async {
    return RegisterPackageResponse(ref: '${request.name}-${request.version}');
  }

  @override
  Future<ReadResourceResponse> readResource(
    Resource resource,
    ReadResourceRequest request,
  ) async {
    final (id, state) = await _mocks.newResource(
      MockResourceArgs(
        type: request.type,
        name: request.name,
        inputs: _toDartMap(request.properties),
        provider: request.provider,
        id: request.id,
        custom: request.type != DeploymentImpl.rootPulumiStackTypeName,
      ),
    );

    final urn = _newUrn(request.parent, request.type, request.name);
    final serializedState = await _serializeToDartMap(state);

    _registeredResources[urn] = {
      'urn': urn,
      'id': id,
      'state': serializedState,
    };

    return ReadResourceResponse(
      urn: urn,
      properties: await _toStruct(serializedState),
    );
  }

  @override
  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    if (request.type == DeploymentImpl.rootPulumiStackTypeName) {
      return RegisterResourceResponse(
        urn: _newUrn(request.parent, request.type, request.name),
        object: Struct(),
      );
    }

    final (id, state) = await _mocks.newResource(
      MockResourceArgs(
        type: request.type,
        name: request.name,
        inputs: _toDartMap(request.object),
        provider: request.provider,
        id: request.importId,
        custom: request.custom,
      ),
    );

    final urn = _newUrn(request.parent, request.type, request.name);
    final serializedState = await _serializeToDartMap(state);

    _registeredResources[urn] = {
      'urn': urn,
      'id': id ?? request.importId,
      'state': serializedState,
    };

    return RegisterResourceResponse(
      id: id ?? request.importId,
      urn: urn,
      object: await _toStruct(serializedState),
    );
  }

  @override
  Future<Empty> registerResourceOutputs(
    RegisterResourceOutputsRequest request,
  ) async {
    final outputs = <String, Output<dynamic>>{};
    for (final entry in request.outputs.fields.entries) {
      outputs[entry.key] = Output.create(
        StructConverter.fromValue(entry.value),
      );
    }

    final mockRequest = MockRegisterResourceOutputsRequest(
      urn: request.urn,
      outputs: outputs,
    );
    await _mocks.registerResourceOutputs(mockRequest);
    return Empty();
  }

  @override
  Future<mon.SupportsFeatureResponse> supportsFeature(
    mon.SupportsFeatureRequest request,
  ) {
    return Future.value(mon.SupportsFeatureResponse(true));
  }

  String _newUrn(String? parent, String type, String name) {
    if (parent != null && parent.isNotEmpty) {
      final qualifiedType = parent.split('::')[2];
      final parentType = qualifiedType.split(r'$').first;
      type = '$parentType\$$type';
    }
    return 'urn:pulumi:${DeploymentImpl.instance.stackName}::${DeploymentImpl.instance.projectName}::$type::$name';
  }

  Map<String, dynamic> _toDartMap(Struct struct) {
    return StructConverter.fromStruct(struct);
  }

  Future<Map<String, dynamic>> _serializeToDartMap(dynamic value) async {
    if (value is Map) {
      return value.map((key, entry) => MapEntry(key.toString(), entry));
    }

    final serialized = await StructConverter.toValue(value);
    final decoded = StructConverter.fromValue(serialized);
    if (decoded is Map) {
      return decoded.map((key, entry) => MapEntry(key.toString(), entry));
    }

    throw StateError(
      'Mock monitor expected Map-compatible value but got ${decoded.runtimeType}',
    );
  }

  Future<Struct> _serializeAsync(dynamic value) async {
    final dict = await _serializeToDartMap(value);
    return _toStruct(dict);
  }

  Future<Struct> _toStruct(Map<String, dynamic> map) {
    return StructConverter.toStruct(map);
  }
}
