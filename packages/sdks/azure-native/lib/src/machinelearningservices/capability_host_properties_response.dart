// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapabilityHostPropertiesResponse {
  /// List of Aca Environment connections.
  final pulumi.Input<List<String>?>? acaEnvironmentConnections;
  /// List of AI services connections.
  final pulumi.Input<List<String>?>? aiServicesConnections;
  /// Kind of this capability host.
  final pulumi.Input<String?>? capabilityHostKind;
  /// Customer subnet info to help set up this capability host.
  final pulumi.Input<String?>? customerSubnet;
  /// The asset description text.
  final pulumi.Input<String?>? description;
  /// List of messages containing errors.
  final pulumi.Input<List<String>> messages;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Provisioning state for the CapabilityHost.
  final pulumi.Input<String> provisioningState;
  /// List of Storage connections.
  final pulumi.Input<List<String>?>? storageConnections;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>?>? tags;
  /// List of Thread storage connections.
  final pulumi.Input<List<String>?>? threadStorageConnections;
  /// List of VectorStore connections.
  final pulumi.Input<List<String>?>? vectorStoreConnections;

  /// Creates a new [CapabilityHostPropertiesResponse].
  /// [acaEnvironmentConnections] List of Aca Environment connections.
  /// [aiServicesConnections] List of AI services connections.
  /// [capabilityHostKind] Kind of this capability host.
  /// [customerSubnet] Customer subnet info to help set up this capability host.
  /// [description] The asset description text.
  /// [messages] List of messages containing errors.
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the CapabilityHost.
  /// [storageConnections] List of Storage connections.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [threadStorageConnections] List of Thread storage connections.
  /// [vectorStoreConnections] List of VectorStore connections.
  CapabilityHostPropertiesResponse({
    this.acaEnvironmentConnections,
    this.aiServicesConnections,
    pulumi.Input<String?>? capabilityHostKind,
    this.customerSubnet,
    this.description,
    required this.messages,
    this.properties,
    required this.provisioningState,
    this.storageConnections,
    this.tags,
    this.threadStorageConnections,
    this.vectorStoreConnections,
  }) : capabilityHostKind = capabilityHostKind ?? pulumi.Input.fromValue('Agents');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acaEnvironmentConnections': ?acaEnvironmentConnections,
      'aiServicesConnections': ?aiServicesConnections,
      'capabilityHostKind': ?capabilityHostKind,
      'customerSubnet': ?customerSubnet,
      'description': ?description,
      'messages': messages,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'storageConnections': ?storageConnections,
      'tags': ?tags,
      'threadStorageConnections': ?threadStorageConnections,
      'vectorStoreConnections': ?vectorStoreConnections,
    };
  }

  factory CapabilityHostPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CapabilityHostPropertiesResponse(
      acaEnvironmentConnections: (() { final guardedValue = map['acaEnvironmentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      aiServicesConnections: (() { final guardedValue = map['aiServicesConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      capabilityHostKind: (() { final guardedValue = map['capabilityHostKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerSubnet: (() { final guardedValue = map['customerSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messages: pulumi.Input.fromValue((map['messages'] as List).cast<String>()),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      storageConnections: (() { final guardedValue = map['storageConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      threadStorageConnections: (() { final guardedValue = map['threadStorageConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vectorStoreConnections: (() { final guardedValue = map['vectorStoreConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
