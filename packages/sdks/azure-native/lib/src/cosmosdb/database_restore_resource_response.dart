// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specific Databases to restore.
class DatabaseRestoreResourceResponse {
  /// The names of the collections available for restore.
  final pulumi.Input<List<String>>? collectionNames;
  /// The name of the database available for restore.
  final pulumi.Input<String>? databaseName;

  /// Creates a new [DatabaseRestoreResourceResponse].
  /// [collectionNames] The names of the collections available for restore.
  /// [databaseName] The name of the database available for restore.
  const DatabaseRestoreResourceResponse({
    this.collectionNames,
    this.databaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionNames': ?collectionNames,
      'databaseName': ?databaseName,
    };
  }

  factory DatabaseRestoreResourceResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseRestoreResourceResponse(
      collectionNames: (() { final guardedValue = map['collectionNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
