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
  const ExtensionProviderState({
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
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionProviderName: (() { final guardedValue = map['extensionProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceMeshId: (() { final guardedValue = map['serviceMeshId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

