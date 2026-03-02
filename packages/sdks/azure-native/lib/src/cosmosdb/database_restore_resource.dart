// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specific Databases to restore.
class DatabaseRestoreResource {
  /// The names of the collections available for restore.
  final pulumi.Input<List<String>>? collectionNames;
  /// The name of the database available for restore.
  final pulumi.Input<String>? databaseName;

  /// Creates a new [DatabaseRestoreResource].
  /// [collectionNames] The names of the collections available for restore.
  /// [databaseName] The name of the database available for restore.
  DatabaseRestoreResource({
    this.collectionNames,
    this.databaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionNames': ?collectionNames,
      'databaseName': ?databaseName,
    };
  }

  factory DatabaseRestoreResource.fromMap(Map<String, dynamic> map) {
    return DatabaseRestoreResource(
      collectionNames: map['collectionNames'] == null ? null : ((map['collectionNames']! as List).cast<String>()).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
    );
  }
}

