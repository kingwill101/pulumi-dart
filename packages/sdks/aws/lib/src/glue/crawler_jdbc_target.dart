// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CrawlerJdbcTarget {
  /// The name of the connection to use to connect to the JDBC target.
  final pulumi.Input<String> connectionName;

  /// Specify a value of `RAWTYPES` or `COMMENTS` to enable additional metadata intable responses. `RAWTYPES` provides the native-level datatype. `COMMENTS` provides comments associated with a column or table in the database.
  final pulumi.Input<List<String>>? enableAdditionalMetadatas;

  /// A list of glob patterns used to exclude from the crawl.
  final pulumi.Input<List<String>>? exclusions;

  /// The path of the JDBC target.
  final pulumi.Input<String> path;

  /// Creates a new [CrawlerJdbcTarget].
  /// [connectionName] The name of the connection to use to connect to the JDBC target.
  /// [enableAdditionalMetadatas] Specify a value of `RAWTYPES` or `COMMENTS` to enable additional metadata intable responses. `RAWTYPES` provides the native-level datatype. `COMMENTS` provides comments associated with a column or table in the database.
  /// [exclusions] A list of glob patterns used to exclude from the crawl.
  /// [path] The path of the JDBC target.
  CrawlerJdbcTarget({
    required this.connectionName,
    this.enableAdditionalMetadatas,
    this.exclusions,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'enableAdditionalMetadatas': ?enableAdditionalMetadatas,
      'exclusions': ?exclusions,
      'path': path,
    };
  }

  factory CrawlerJdbcTarget.fromMap(Map<String, dynamic> map) {
    return CrawlerJdbcTarget(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      enableAdditionalMetadatas: (() {
        final guardedValue = map['enableAdditionalMetadatas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      exclusions: (() {
        final guardedValue = map['exclusions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
