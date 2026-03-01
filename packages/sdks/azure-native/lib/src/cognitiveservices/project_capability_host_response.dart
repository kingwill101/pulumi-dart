// ignore_for_file: unused_element, unnecessary_cast


class ProjectCapabilityHostResponse {
  /// List of AI services connections.
  final List<String>? aiServicesConnections;
  /// Provisioning state for the CapabilityHost.
  final String provisioningState;
  /// List of connection names from those available in the account or project to be used as a storage resource.
  final List<String>? storageConnections;
  /// List of connection names from those available in the account or project to be used for Thread storage.
  final List<String>? threadStorageConnections;
  /// List of connection names from those available in the account or project to be used for vector database (e.g. CosmosDB).
  final List<String>? vectorStoreConnections;

  /// Creates a new [ProjectCapabilityHostResponse].
  /// [aiServicesConnections] List of AI services connections.
  /// [provisioningState] Provisioning state for the CapabilityHost.
  /// [storageConnections] List of connection names from those available in the account or project to be used as a storage resource.
  /// [threadStorageConnections] List of connection names from those available in the account or project to be used for Thread storage.
  /// [vectorStoreConnections] List of connection names from those available in the account or project to be used for vector database (e.g. CosmosDB).
  ProjectCapabilityHostResponse({
    this.aiServicesConnections,
    required this.provisioningState,
    this.storageConnections,
    this.threadStorageConnections,
    this.vectorStoreConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiServicesConnections': ?aiServicesConnections,
      'provisioningState': provisioningState,
      'storageConnections': ?storageConnections,
      'threadStorageConnections': ?threadStorageConnections,
      'vectorStoreConnections': ?vectorStoreConnections,
    };
  }

  factory ProjectCapabilityHostResponse.fromMap(Map<String, dynamic> map) {
    return ProjectCapabilityHostResponse(
      aiServicesConnections: map['aiServicesConnections'] == null ? null : (map['aiServicesConnections'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      storageConnections: map['storageConnections'] == null ? null : (map['storageConnections'] as List).cast<String>(),
      threadStorageConnections: map['threadStorageConnections'] == null ? null : (map['threadStorageConnections'] as List).cast<String>(),
      vectorStoreConnections: map['vectorStoreConnections'] == null ? null : (map['vectorStoreConnections'] as List).cast<String>(),
    );
  }
}

