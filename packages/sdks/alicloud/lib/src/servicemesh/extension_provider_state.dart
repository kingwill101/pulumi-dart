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
    this.config,
    this.extensionProviderName,
    this.serviceMeshId,
    this.type,
  });

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
      config: map['config'] == null ? null : (map['config'] as String).input(),
      extensionProviderName: map['extensionProviderName'] == null ? null : (map['extensionProviderName'] as String).input(),
      serviceMeshId: map['serviceMeshId'] == null ? null : (map['serviceMeshId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

