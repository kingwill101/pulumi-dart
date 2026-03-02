// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a properties of a cluster that is part of a migration.
class MigrationClusterPropertiesResponse {
  /// The public data ingestion URL of the cluster.
  final pulumi.Input<String> dataIngestionUri;
  /// The resource ID of the cluster.
  final pulumi.Input<String> id;
  /// The role of the cluster in the migration process.
  final pulumi.Input<String> role;
  /// The public URL of the cluster.
  final pulumi.Input<String> uri;

  /// Creates a new [MigrationClusterPropertiesResponse].
  /// [dataIngestionUri] The public data ingestion URL of the cluster.
  /// [id] The resource ID of the cluster.
  /// [role] The role of the cluster in the migration process.
  /// [uri] The public URL of the cluster.
  MigrationClusterPropertiesResponse({
    required this.dataIngestionUri,
    required this.id,
    required this.role,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataIngestionUri': dataIngestionUri,
      'id': id,
      'role': role,
      'uri': uri,
    };
  }

  factory MigrationClusterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrationClusterPropertiesResponse(
      dataIngestionUri: (map['dataIngestionUri'] as String).input(),
      id: (map['id'] as String).input(),
      role: (map['role'] as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

