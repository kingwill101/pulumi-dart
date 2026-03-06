// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mongo source and target database and collection details.
class MongoMigrationCollection {
  /// Source collection name.
  final pulumi.Input<String>? sourceCollection;
  /// Source database name.
  final pulumi.Input<String>? sourceDatabase;
  /// Target collection name.
  final pulumi.Input<String>? targetCollection;
  /// Target database name.
  final pulumi.Input<String>? targetDatabase;

  /// Creates a new [MongoMigrationCollection].
  /// [sourceCollection] Source collection name.
  /// [sourceDatabase] Source database name.
  /// [targetCollection] Target collection name.
  /// [targetDatabase] Target database name.
  const MongoMigrationCollection({
    this.sourceCollection,
    this.sourceDatabase,
    this.targetCollection,
    this.targetDatabase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceCollection': ?sourceCollection,
      'sourceDatabase': ?sourceDatabase,
      'targetCollection': ?targetCollection,
      'targetDatabase': ?targetDatabase,
    };
  }

  factory MongoMigrationCollection.fromMap(Map<String, dynamic> map) {
    return MongoMigrationCollection(
      sourceCollection: (() { final guardedValue = map['sourceCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDatabase: (() { final guardedValue = map['sourceDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetCollection: (() { final guardedValue = map['targetCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDatabase: (() { final guardedValue = map['targetDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

