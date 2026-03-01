// ignore_for_file: unused_element, unnecessary_cast

import 'mongo_migration_progress_details_response.dart';

/// Mongo source and target database and collection details.
class MongoMigrationCollectionResponse {
  /// Detailed migration status. Not included by default.
  final MongoMigrationProgressDetailsResponse migrationProgressDetails;
  /// Source collection name.
  final String? sourceCollection;
  /// Source database name.
  final String? sourceDatabase;
  /// Target collection name.
  final String? targetCollection;
  /// Target database name.
  final String? targetDatabase;

  /// Creates a new [MongoMigrationCollectionResponse].
  /// [migrationProgressDetails] Detailed migration status. Not included by default.
  /// [sourceCollection] Source collection name.
  /// [sourceDatabase] Source database name.
  /// [targetCollection] Target collection name.
  /// [targetDatabase] Target database name.
  MongoMigrationCollectionResponse({
    required this.migrationProgressDetails,
    this.sourceCollection,
    this.sourceDatabase,
    this.targetCollection,
    this.targetDatabase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationProgressDetails': migrationProgressDetails.toMap(),
      'sourceCollection': ?sourceCollection,
      'sourceDatabase': ?sourceDatabase,
      'targetCollection': ?targetCollection,
      'targetDatabase': ?targetDatabase,
    };
  }

  factory MongoMigrationCollectionResponse.fromMap(Map<String, dynamic> map) {
    return MongoMigrationCollectionResponse(
      migrationProgressDetails: MongoMigrationProgressDetailsResponse.fromMap((map['migrationProgressDetails'] as Map).cast<String, dynamic>()),
      sourceCollection: map['sourceCollection'] == null ? null : map['sourceCollection'] as String,
      sourceDatabase: map['sourceDatabase'] == null ? null : map['sourceDatabase'] as String,
      targetCollection: map['targetCollection'] == null ? null : map['targetCollection'] as String,
      targetDatabase: map['targetDatabase'] == null ? null : map['targetDatabase'] as String,
    );
  }
}

