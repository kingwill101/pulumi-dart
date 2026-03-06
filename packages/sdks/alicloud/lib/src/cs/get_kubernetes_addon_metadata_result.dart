// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKubernetesAddonMetadata.
class GetKubernetesAddonMetadataResult {
  final String clusterId;
  /// The addon configuration that can be customized. The returned format is the standard json schema. If return empty, it means that the addon does not support custom configuration yet.
  final String configSchema;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String version;

  /// Creates a new [GetKubernetesAddonMetadataResult].
  /// [clusterId] Required.
  /// [configSchema] The addon configuration that can be customized. The returned format is the standard json schema. If return empty, it means that the addon does not support custom configuration yet.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [version] Required.
  const GetKubernetesAddonMetadataResult({
    required this.clusterId,
    required this.configSchema,
    required this.id,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'configSchema': configSchema,
      'id': id,
      'name': name,
      'version': version,
    };
  }

  factory GetKubernetesAddonMetadataResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesAddonMetadataResult(
      clusterId: map['clusterId'] as String,
      configSchema: map['configSchema'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}

