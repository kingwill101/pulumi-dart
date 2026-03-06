// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specific Gremlin Databases to restore.
class GremlinDatabaseRestoreResource {
  /// The name of the gremlin database available for restore.
  final pulumi.Input<String>? databaseName;
  /// The names of the graphs available for restore.
  final pulumi.Input<List<String>>? graphNames;

  /// Creates a new [GremlinDatabaseRestoreResource].
  /// [databaseName] The name of the gremlin database available for restore.
  /// [graphNames] The names of the graphs available for restore.
  const GremlinDatabaseRestoreResource({
    this.databaseName,
    this.graphNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'graphNames': ?graphNames,
    };
  }

  factory GremlinDatabaseRestoreResource.fromMap(Map<String, dynamic> map) {
    return GremlinDatabaseRestoreResource(
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      graphNames: (() { final guardedValue = map['graphNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

