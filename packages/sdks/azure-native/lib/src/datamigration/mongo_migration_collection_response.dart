// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_migration_progress_details_response.dart';

/// Mongo source and target database and collection details.
class MongoMigrationCollectionResponse {
  /// Detailed migration status. Not included by default.
  final pulumi.Input<MongoMigrationProgressDetailsResponse> migrationProgressDetails;
  /// Source collection name.
  final pulumi.Input<String>? sourceCollection;
  /// Source database name.
  final pulumi.Input<String>? sourceDatabase;
  /// Target collection name.
  final pulumi.Input<String>? targetCollection;
  /// Target database name.
  final pulumi.Input<String>? targetDatabase;

  /// Creates a new [MongoMigrationCollectionResponse].
  /// [migrationProgressDetails] Detailed migration status. Not included by default.
  /// [sourceCollection] Source collection name.
  /// [sourceDatabase] Source database name.
  /// [targetCollection] Target collection name.
  /// [targetDatabase] Target database name.
  const MongoMigrationCollectionResponse({
    required this.migrationProgressDetails,
    this.sourceCollection,
    this.sourceDatabase,
    this.targetCollection,
    this.targetDatabase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationProgressDetails': pulumi.Input.mapInputValue<MongoMigrationProgressDetailsResponse, Map<String, dynamic>>(migrationProgressDetails, (value) => value.toMap()),
      'sourceCollection': ?sourceCollection,
      'sourceDatabase': ?sourceDatabase,
      'targetCollection': ?targetCollection,
      'targetDatabase': ?targetDatabase,
    };
  }

  factory MongoMigrationCollectionResponse.fromMap(Map<String, dynamic> map) {
    return MongoMigrationCollectionResponse(
      migrationProgressDetails: pulumi.Input.fromValue(MongoMigrationProgressDetailsResponse.fromMap((map['migrationProgressDetails']! as Map).cast<String, dynamic>())),
      sourceCollection: (() { final guardedValue = map['sourceCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDatabase: (() { final guardedValue = map['sourceDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetCollection: (() { final guardedValue = map['targetCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDatabase: (() { final guardedValue = map['targetDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
