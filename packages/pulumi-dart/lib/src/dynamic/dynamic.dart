import 'package:pulumi/pulumi.dart' as pulumi;

/// Reserved input key used to carry the serialized provider payload.
const String providerKey = '__provider';

/// A single property validation failure.
class CheckFailure {
  const CheckFailure({required this.property, required this.reason});

  /// Property path that failed validation.
  final String property;

  /// Human-readable validation reason.
  final String reason;
}

/// Result returned from provider `check`.
class CheckResult<TInputs extends Map<String, dynamic>> {
  const CheckResult({this.inputs, this.failures = const <CheckFailure>[]});

  /// Normalized inputs to persist.
  final TInputs? inputs;

  /// Validation failures.
  final List<CheckFailure> failures;
}

/// Result returned from provider `diff`.
class DiffResult {
  const DiffResult({
    this.changes,
    this.replaces,
    this.stables,
    this.deleteBeforeReplace,
  });

  /// Whether changes were detected.
  final bool? changes;

  /// Property paths requiring replacement.
  final List<String>? replaces;

  /// Property paths that remain stable.
  final List<String>? stables;

  /// Whether replacement should use delete-before-replace semantics.
  final bool? deleteBeforeReplace;
}

/// Result returned from provider `create`.
class CreateResult<TOutputs extends Map<String, dynamic>> {
  const CreateResult({required this.id, this.outs});

  /// Provider-assigned resource identifier.
  final String id;

  /// Computed outputs.
  final TOutputs? outs;
}

/// Result returned from provider `read`.
class ReadResult<TOutputs extends Map<String, dynamic>> {
  const ReadResult({this.id, this.props, this.inputs});

  /// Resource identifier, or `null` when missing.
  final String? id;

  /// Current provider state.
  final TOutputs? props;

  /// Optional input state to use for subsequent diffs.
  final TOutputs? inputs;
}

/// Result returned from provider `update`.
class UpdateResult<TOutputs extends Map<String, dynamic>> {
  const UpdateResult({this.outs});

  /// Computed outputs after update.
  final TOutputs? outs;
}

/// Configuration bag passed to dynamic providers.
abstract interface class Config {
  /// Returns a configuration value or `null` when missing.
  String? get(String key);

  /// Returns a required configuration value.
  String require(String key);
}

/// Map-backed [Config] implementation.
class MapConfig implements Config {
  MapConfig(Map<String, String> values)
    : _values = Map<String, String>.unmodifiable(values);

  final Map<String, String> _values;

  @override
  String? get(String key) => _values[key];

  @override
  String require(String key) {
    final value = _values[key];
    if (value == null) {
      throw StateError('Missing required config key: $key');
    }
    return value;
  }
}

/// Input bag passed to provider `configure`.
class ConfigureRequest {
  const ConfigureRequest({required this.config});

  /// Stack configuration for the current deployment.
  final Config config;
}

/// Provider CRUD contract for dynamic resources.
///
/// Dart currently supports the provider model and resource wire format at the
/// API layer. Runtime execution of serialized provider payloads is evolving.
abstract class ResourceProvider<
  TInputs extends Map<String, dynamic>,
  TOutputs extends Map<String, dynamic>
> {
  /// Configures provider state before resource operations.
  Future<void> configure(ConfigureRequest request) async {}

  /// Validates and normalizes input properties.
  Future<CheckResult<TInputs>> check(TInputs olds, TInputs news) async {
    return CheckResult<TInputs>(inputs: news);
  }

  /// Computes update impact.
  Future<DiffResult> diff(String id, TOutputs olds, TInputs news) async {
    return const DiffResult();
  }

  /// Creates a new resource instance.
  Future<CreateResult<TOutputs>> create(TInputs inputs);

  /// Reads current state for an existing resource.
  Future<ReadResult<TOutputs>> read(String id, [TOutputs? props]) async {
    return ReadResult<TOutputs>(id: id, props: props);
  }

  /// Updates resource state.
  Future<UpdateResult<TOutputs>> update(
    String id,
    TOutputs olds,
    TInputs news,
  ) async {
    return UpdateResult<TOutputs>();
  }

  /// Deletes a resource instance.
  Future<void> delete(String id, TOutputs props) async {}
}

/// Serialized provider payload reference attached to dynamic resource inputs.
abstract interface class ProviderReference {
  /// Serialized provider payload.
  pulumi.Input<String> get encoded;
}

/// Simple [ProviderReference] backed by a pre-encoded payload.
class SerializedProviderReference implements ProviderReference {
  const SerializedProviderReference(this.encoded);

  /// Creates a provider reference from a plain encoded string value.
  factory SerializedProviderReference.fromValue(String encoded) {
    return SerializedProviderReference(pulumi.Input.fromValue(encoded));
  }

  @override
  final pulumi.Input<String> encoded;
}

/// Base class for dynamic resources.
///
/// A dynamic resource injects a reserved `__provider` input that points to
/// serialized provider implementation payload understood by the dynamic runtime
/// plugin.
abstract class Resource extends pulumi.CustomResource {
  Resource(
    ProviderReference provider,
    String name,
    pulumi.Inputs props, {
    pulumi.CustomResourceOptions? options,
    String? module,
    String type = 'Resource',
  }) : super(
         _dynamicTypeToken(module, type),
         name,
         _withProviderPayload(provider, props),
         options ?? pulumi.CustomResourceOptions(),
       );

  static pulumi.Inputs _withProviderPayload(
    ProviderReference provider,
    pulumi.Inputs props,
  ) {
    if (props.containsKey(providerKey)) {
      throw ArgumentError(
        'A dynamic resource must not define the $providerKey key',
      );
    }

    return <String, pulumi.Input<dynamic>>{
      ...props,
      providerKey: provider.encoded,
    };
  }
}

String _dynamicTypeToken(String? module, String type) {
  final normalizedModule = module?.trim() ?? '';
  if (normalizedModule.isEmpty) {
    return 'pulumi-dart:dynamic:$type';
  }
  return 'pulumi-dart:dynamic/$normalizedModule:$type';
}
