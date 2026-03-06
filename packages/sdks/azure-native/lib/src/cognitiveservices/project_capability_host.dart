// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectCapabilityHost {
  /// List of AI services connections.
  final pulumi.Input<List<String>>? aiServicesConnections;
  /// List of connection names from those available in the account or project to be used as a storage resource.
  final pulumi.Input<List<String>>? storageConnections;
  /// List of connection names from those available in the account or project to be used for Thread storage.
  final pulumi.Input<List<String>>? threadStorageConnections;
  /// List of connection names from those available in the account or project to be used for vector database (e.g. CosmosDB).
  final pulumi.Input<List<String>>? vectorStoreConnections;

  /// Creates a new [ProjectCapabilityHost].
  /// [aiServicesConnections] List of AI services connections.
  /// [storageConnections] List of connection names from those available in the account or project to be used as a storage resource.
  /// [threadStorageConnections] List of connection names from those available in the account or project to be used for Thread storage.
  /// [vectorStoreConnections] List of connection names from those available in the account or project to be used for vector database (e.g. CosmosDB).
  const ProjectCapabilityHost({
    this.aiServicesConnections,
    this.storageConnections,
    this.threadStorageConnections,
    this.vectorStoreConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiServicesConnections': ?aiServicesConnections,
      'storageConnections': ?storageConnections,
      'threadStorageConnections': ?threadStorageConnections,
      'vectorStoreConnections': ?vectorStoreConnections,
    };
  }

  factory ProjectCapabilityHost.fromMap(Map<String, dynamic> map) {
    return ProjectCapabilityHost(
      aiServicesConnections: (() { final guardedValue = map['aiServicesConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      storageConnections: (() { final guardedValue = map['storageConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      threadStorageConnections: (() { final guardedValue = map['threadStorageConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vectorStoreConnections: (() { final guardedValue = map['vectorStoreConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

