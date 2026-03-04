// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapabilityHost {
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

  /// List of Storage connections.
  final pulumi.Input<List<String>>? storageConnections;

  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// List of Thread storage connections.
  final pulumi.Input<List<String>>? threadStorageConnections;

  /// List of VectorStore connections.
  final pulumi.Input<List<String>>? vectorStoreConnections;

  /// Creates a new [CapabilityHost].
  /// [aiServicesConnections] List of AI services connections.
  /// [capabilityHostKind] Kind of this capability host.
  /// [customerSubnet] Customer subnet info to help set up this capability host.
  /// [description] The asset description text.
  /// [properties] The asset property dictionary.
  /// [storageConnections] List of Storage connections.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [threadStorageConnections] List of Thread storage connections.
  /// [vectorStoreConnections] List of VectorStore connections.
  CapabilityHost({
    this.aiServicesConnections,
    this.capabilityHostKind,
    this.customerSubnet,
    this.description,
    this.properties,
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
      'storageConnections': ?storageConnections,
      'tags': ?tags,
      'threadStorageConnections': ?threadStorageConnections,
      'vectorStoreConnections': ?vectorStoreConnections,
    };
  }

  factory CapabilityHost.fromMap(Map<String, dynamic> map) {
    return CapabilityHost(
      aiServicesConnections: (() {
        final guardedValue = map['aiServicesConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      capabilityHostKind: (() {
        final guardedValue = map['capabilityHostKind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customerSubnet: (() {
        final guardedValue = map['customerSubnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      storageConnections: (() {
        final guardedValue = map['storageConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      threadStorageConnections: (() {
        final guardedValue = map['threadStorageConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      vectorStoreConnections: (() {
        final guardedValue = map['vectorStoreConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
