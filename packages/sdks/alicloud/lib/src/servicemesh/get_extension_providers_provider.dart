// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExtensionProvidersProvider {
  /// The config of the Service Mesh Extension Provider.
  final pulumi.Input<String> config;

  /// The name of the Service Mesh Extension Provider.
  final pulumi.Input<String> extensionProviderName;

  /// The ID of the Service Mesh Extension Provider. It formats as `&lt;service_mesh_id&gt;:&lt;type&gt;:&lt;extension_provider_name&gt;`.
  final pulumi.Input<String> id;

  /// The ID of the Service Mesh.
  final pulumi.Input<String> serviceMeshId;

  /// The type of the Service Mesh Extension Provider. Valid values: `httpextauth`, `grpcextauth`.
  final pulumi.Input<String> type;

  /// Creates a new [GetExtensionProvidersProvider].
  /// [config] The config of the Service Mesh Extension Provider.
  /// [extensionProviderName] The name of the Service Mesh Extension Provider.
  /// [id] The ID of the Service Mesh Extension Provider. It formats as `&lt;service_mesh_id&gt;:&lt;type&gt;:&lt;extension_provider_name&gt;`.
  /// [serviceMeshId] The ID of the Service Mesh.
  /// [type] The type of the Service Mesh Extension Provider. Valid values: `httpextauth`, `grpcextauth`.
  GetExtensionProvidersProvider({
    required this.config,
    required this.extensionProviderName,
    required this.id,
    required this.serviceMeshId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config,
      'extensionProviderName': extensionProviderName,
      'id': id,
      'serviceMeshId': serviceMeshId,
      'type': type,
    };
  }

  factory GetExtensionProvidersProvider.fromMap(Map<String, dynamic> map) {
    return GetExtensionProvidersProvider(
      config: pulumi.Input.fromValue(map['config'] as String),
      extensionProviderName: pulumi.Input.fromValue(
        map['extensionProviderName'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      serviceMeshId: pulumi.Input.fromValue(map['serviceMeshId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
