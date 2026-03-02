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
  ProjectCapabilityHost({
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
      aiServicesConnections: map['aiServicesConnections'] == null ? null : ((map['aiServicesConnections']! as List).cast<String>()).input(),
      storageConnections: map['storageConnections'] == null ? null : ((map['storageConnections']! as List).cast<String>()).input(),
      threadStorageConnections: map['threadStorageConnections'] == null ? null : ((map['threadStorageConnections']! as List).cast<String>()).input(),
      vectorStoreConnections: map['vectorStoreConnections'] == null ? null : ((map['vectorStoreConnections']! as List).cast<String>()).input(),
    );
  }
}

