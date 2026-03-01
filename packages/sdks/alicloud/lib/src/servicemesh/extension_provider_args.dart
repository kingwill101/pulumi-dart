// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicemesh_extension_provider_extension_provider_args_doc}
/// The set of arguments for ExtensionProvider.
/// {@endtemplate}
/// {@macro pulumi_servicemesh_extension_provider_extension_provider_args_doc}
class ExtensionProviderArgs {
  /// The config of the Service Mesh Extension Provider. The `config` format is json.
  final pulumi.Input<String> config;
  /// The name of the Service Mesh Extension Provider. It must be prefixed with `$type-`, for example `httpextauth-xxx`, `grpcextauth-xxx`.
  final pulumi.Input<String> extensionProviderName;
  /// The ID of the Service Mesh.
  final pulumi.Input<String> serviceMeshId;
  /// The type of the Service Mesh Extension Provider. Valid values: `httpextauth`, `grpcextauth`.
  final pulumi.Input<String> type;

  /// Creates a new [ExtensionProviderArgs].
  /// [config] The config of the Service Mesh Extension Provider. The `config` format is json.
  /// [extensionProviderName] The name of the Service Mesh Extension Provider. It must be prefixed with `$type-`, for example `httpextauth-xxx`, `grpcextauth-xxx`.
  /// [serviceMeshId] The ID of the Service Mesh.
  /// [type] The type of the Service Mesh Extension Provider. Valid values: `httpextauth`, `grpcextauth`.
  ExtensionProviderArgs({
    required pulumi.Output<String> config,
    required pulumi.Output<String> extensionProviderName,
    required pulumi.Output<String> serviceMeshId,
    required pulumi.Output<String> type,
  }) :
      config = pulumi.Input.asInput<String>(config),
      extensionProviderName = pulumi.Input.asInput<String>(extensionProviderName),
      serviceMeshId = pulumi.Input.asInput<String>(serviceMeshId),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config,
      'extensionProviderName': extensionProviderName,
      'serviceMeshId': serviceMeshId,
      'type': type,
    };
  }

  factory ExtensionProviderArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionProviderArgs(
      config: pulumi.Output.create<String>(map['config'] as String),
      extensionProviderName: pulumi.Output.create<String>(map['extensionProviderName'] as String),
      serviceMeshId: pulumi.Output.create<String>(map['serviceMeshId'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

