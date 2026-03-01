// ignore_for_file: unused_element, unnecessary_cast


class GetExtensionProvidersProvider {
  /// The config of the Service Mesh Extension Provider.
  final String config;
  /// The name of the Service Mesh Extension Provider.
  final String extensionProviderName;
  /// The ID of the Service Mesh Extension Provider. It formats as `<service_mesh_id>:<type>:<extension_provider_name>`.
  final String id;
  /// The ID of the Service Mesh.
  final String serviceMeshId;
  /// The type of the Service Mesh Extension Provider. Valid values: `httpextauth`, `grpcextauth`.
  final String type;

  /// Creates a new [GetExtensionProvidersProvider].
  /// [config] The config of the Service Mesh Extension Provider.
  /// [extensionProviderName] The name of the Service Mesh Extension Provider.
  /// [id] The ID of the Service Mesh Extension Provider. It formats as `<service_mesh_id>:<type>:<extension_provider_name>`.
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
      config: map['config'] as String,
      extensionProviderName: map['extensionProviderName'] as String,
      id: map['id'] as String,
      serviceMeshId: map['serviceMeshId'] as String,
      type: map['type'] as String,
    );
  }
}

