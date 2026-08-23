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
  /// Provisioning state for the CapabilityHost.
  final pulumi.Input<String> provisioningState;
  /// List of connection names from those available in the account or project to be used as a storage resource.
  final pulumi.Input<List<String>>? storageConnections;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;
  /// List of connection names from those available in the account or project to be used for Thread storage.
  final pulumi.Input<List<String>>? threadStorageConnections;
  /// List of connection names from those available in the account or project to be used for vector database (e.g. CosmosDB).
  final pulumi.Input<List<String>>? vectorStoreConnections;

  /// Creates a new [CapabilityHostResponse].
  /// [aiServicesConnections] List of AI services connections.
  /// [capabilityHostKind] Kind of this capability host.
  /// [customerSubnet] Customer subnet info to help set up this capability host.
  /// [description] The asset description text.
  /// [provisioningState] Provisioning state for the CapabilityHost.
  /// [storageConnections] List of connection names from those available in the account or project to be used as a storage resource.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [threadStorageConnections] List of connection names from those available in the account or project to be used for Thread storage.
  /// [vectorStoreConnections] List of connection names from those available in the account or project to be used for vector database (e.g. CosmosDB).
  const CapabilityHostResponse({
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
      aiServicesConnections: (() { final guardedValue = map['aiServicesConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      capabilityHostKind: (() { final guardedValue = map['capabilityHostKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerSubnet: (() { final guardedValue = map['customerSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      storageConnections: (() { final guardedValue = map['storageConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      threadStorageConnections: (() { final guardedValue = map['threadStorageConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vectorStoreConnections: (() { final guardedValue = map['vectorStoreConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
