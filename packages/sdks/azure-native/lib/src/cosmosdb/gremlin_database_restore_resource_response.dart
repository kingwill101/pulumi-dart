// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specific Gremlin Databases to restore.
class GremlinDatabaseRestoreResourceResponse {
  /// The name of the gremlin database available for restore.
  final pulumi.Input<String>? databaseName;
  /// The names of the graphs available for restore.
  final pulumi.Input<List<String>>? graphNames;

  /// Creates a new [GremlinDatabaseRestoreResourceResponse].
  /// [databaseName] The name of the gremlin database available for restore.
  /// [graphNames] The names of the graphs available for restore.
  GremlinDatabaseRestoreResourceResponse({
    this.databaseName,
    this.graphNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'graphNames': ?graphNames,
    };
  }

  factory GremlinDatabaseRestoreResourceResponse.fromMap(Map<String, dynamic> map) {
    return GremlinDatabaseRestoreResourceResponse(
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
      graphNames: map['graphNames'] == null ? null : ((map['graphNames']! as List).cast<String>()).input(),
    );
  }
}

