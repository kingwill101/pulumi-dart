// ignore_for_file: unused_element, unnecessary_cast


/// Represents a properties of a cluster that is part of a migration.
class MigrationClusterPropertiesResponse {
  /// The public data ingestion URL of the cluster.
  final String dataIngestionUri;
  /// The resource ID of the cluster.
  final String id;
  /// The role of the cluster in the migration process.
  final String role;
  /// The public URL of the cluster.
  final String uri;

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
      dataIngestionUri: map['dataIngestionUri'] as String,
      id: map['id'] as String,
      role: map['role'] as String,
      uri: map['uri'] as String,
    );
  }
}

