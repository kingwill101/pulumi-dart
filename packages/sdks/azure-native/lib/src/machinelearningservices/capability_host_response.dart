// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapabilityHostResponse {
  /// List of AI services connections.
  final pulumi.Input<List<String>>? aiServicesConnections;
  /// Kind of this capability host.
  final pulumi.Input<String>? capabilityHostKind;
  /// Customer subnet info to help set up this capability host.
  final pulumi.Input<String>? customerSubnet;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Provisioning state for the CapabilityHost.
  final pulumi.Input<String> provisioningState;
  /// List of Storage connections.
  final pulumi.Input<List<String>>? storageConnections;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;
  /// List of Thread storage connections.
  final pulumi.Input<List<String>>? threadStorageConnections;
  /// List of VectorStore connections.
  final pulumi.Input<List<String>>? vectorStoreConnections;

  /// Creates a new [CapabilityHostResponse].
  /// [aiServicesConnections] List of AI services connections.
  /// [capabilityHostKind] Kind of this capability host.
  /// [customerSubnet] Customer subnet info to help set up this capability host.
  /// [description] The asset description text.
  /// [properties] The asset property dictionary.
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
    this.properties,
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
      'properties': ?properties,
      'provisioningState': provisioningState,
      'storageConnections': ?storageConnections,
      'tags': ?tags,
      'threadStorageConnections': ?threadStorageConnections,
      'vectorStoreConnections': ?vectorStoreConnections,
    };
  }

  factory CapabilityHostResponse.fromMap(Map<String, dynamic> map) {
    return CapabilityHostResponse(
      aiServicesConnections: map['aiServicesConnections'] == null ? null : ((map['aiServicesConnections'] as List).cast<String>()).input(),
      capabilityHostKind: map['capabilityHostKind'] == null ? null : (map['capabilityHostKind'] as String).input(),
      customerSubnet: map['customerSubnet'] == null ? null : (map['customerSubnet'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      storageConnections: map['storageConnections'] == null ? null : ((map['storageConnections'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      threadStorageConnections: map['threadStorageConnections'] == null ? null : ((map['threadStorageConnections'] as List).cast<String>()).input(),
      vectorStoreConnections: map['vectorStoreConnections'] == null ? null : ((map['vectorStoreConnections'] as List).cast<String>()).input(),
    );
  }
}

