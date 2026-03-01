// ignore_for_file: unused_element, unnecessary_cast


/// The Storage config of AzureStackHCI Cluster.
class StorageResponse {
  /// By default, this mode is set to Express and your storage is configured as per best practices based on the number of nodes in the cluster. Allowed values are 'Express','InfraOnly', 'KeepStorage'
  final String? configurationMode;

  /// Creates a new [StorageResponse].
  /// [configurationMode] By default, this mode is set to Express and your storage is configured as per best practices based on the number of nodes in the cluster. Allowed values are 'Express','InfraOnly', 'KeepStorage'
  StorageResponse({
    this.configurationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationMode': ?configurationMode,
    };
  }

  factory StorageResponse.fromMap(Map<String, dynamic> map) {
    return StorageResponse(
      configurationMode: map['configurationMode'] == null ? null : map['configurationMode'] as String,
    );
  }
}

