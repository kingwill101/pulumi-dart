// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExtensionProvider resources.
class ExtensionProviderState {
  /// The config of the Service Mesh Extension Provider. The `config` format is json.
  final pulumi.Input<String>? config;
  /// The name of the Service Mesh Extension Provider. It must be prefixed with `$type-`, for example `httpextauth-xxx`, `grpcextauth-xxx`.
  final pulumi.Input<String>? extensionProviderName;
  /// The ID of the Service Mesh.
  final pulumi.Input<String>? serviceMeshId;
  /// The type of the Service Mesh Extension Provider. Valid values: `httpextauth`, `grpcextauth`.
  final pulumi.Input<String>? type;

  /// Creates a new [ExtensionProviderState].
  /// [config] The config of the Service Mesh Extension Provider. The `config` format is json.
  /// [extensionProviderName] The name of the Service Mesh Extension Provider. It must be prefixed with `$type-`, for example `httpextauth-xxx`, `grpcextauth-xxx`.
  /// [serviceMeshId] The ID of the Service Mesh.
  /// [type] The type of the Service Mesh Extension Provider. Valid values: `httpextauth`, `grpcextauth`.
  ExtensionProviderState({
    pulumi.Output<String>? config,
    pulumi.Output<String>? extensionProviderName,
    pulumi.Output<String>? serviceMeshId,
    pulumi.Output<String>? type,
  }) :
      config = pulumi.Input.asOptionalInput<String>(config),
      extensionProviderName = pulumi.Input.asOptionalInput<String>(extensionProviderName),
      serviceMeshId = pulumi.Input.asOptionalInput<String>(serviceMeshId),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'extensionProviderName': ?extensionProviderName,
      'serviceMeshId': ?serviceMeshId,
      'type': ?type,
    };
  }

  factory ExtensionProviderState.fromMap(Map<String, dynamic> map) {
    return ExtensionProviderState(
      config: map['config'] == null ? null : pulumi.Output.create<String>(map['config'] as String),
      extensionProviderName: map['extensionProviderName'] == null ? null : pulumi.Output.create<String>(map['extensionProviderName'] as String),
      serviceMeshId: map['serviceMeshId'] == null ? null : pulumi.Output.create<String>(map['serviceMeshId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

