// ignore_for_file: unused_element, unnecessary_cast


class CapabilityHostResponse {
  /// List of AI services connections.
  final List<String>? aiServicesConnections;
  /// Kind of this capability host.
  final String? capabilityHostKind;
  /// Customer subnet info to help set up this capability host.
  final String? customerSubnet;
  /// The asset description text.
  final String? description;
  /// Provisioning state for the CapabilityHost.
  final String provisioningState;
  /// List of Storage connections.
  final List<String>? storageConnections;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;
  /// List of Thread storage connections.
  final List<String>? threadStorageConnections;
  /// List of VectorStore connections.
  final List<String>? vectorStoreConnections;

  /// Creates a new [CapabilityHostResponse].
  /// [aiServicesConnections] List of AI services connections.
  /// [capabilityHostKind] Kind of this capability host.
  /// [customerSubnet] Customer subnet info to help set up this capability host.
  /// [description] The asset description text.
  /// [provisioningState] Provisioning state for the CapabilityHost.
  /// [storageConnections] List of Storage connections.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [threadStorageConnections] List of Thread storage connections.
  /// [vectorStoreConnections] List of VectorStore connections.
  CapabilityHostResponse({
    this.aiServicesConnections,
    this.capabilityHostKind,
    this.customerSubnet,
    this.description,
    required this.provisioningState,
    this.storageConnections,
    this.tags,
    this.threadStorageConnections,
    this.vectorStoreConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiServicesConnections': ?aiServicesConnections,
      'capabilityHostKind': ?capabilityHostKind,
      'customerSubnet': ?customerSubnet,
      'description': ?description,
      'provisioningState': provisioningState,
      'storageConnections': ?storageConnections,
      'tags': ?tags,
      'threadStorageConnections': ?threadStorageConnections,
      'vectorStoreConnections': ?vectorStoreConnections,
    };
  }

  factory CapabilityHostResponse.fromMap(Map<String, dynamic> map) {
    return CapabilityHostResponse(
      aiServicesConnections: map['aiServicesConnections'] == null ? null : (map['aiServicesConnections'] as List).cast<String>(),
      capabilityHostKind: map['capabilityHostKind'] == null ? null : map['capabilityHostKind'] as String,
      customerSubnet: map['customerSubnet'] == null ? null : map['customerSubnet'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      provisioningState: map['provisioningState'] as String,
      storageConnections: map['storageConnections'] == null ? null : (map['storageConnections'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      threadStorageConnections: map['threadStorageConnections'] == null ? null : (map['threadStorageConnections'] as List).cast<String>(),
      vectorStoreConnections: map['vectorStoreConnections'] == null ? null : (map['vectorStoreConnections'] as List).cast<String>(),
    );
  }
}

