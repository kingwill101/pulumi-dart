// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CrawlerMongodbTarget {
  /// The name of the connection to use to connect to the Amazon DocumentDB or MongoDB target.
  final pulumi.Input<String> connectionName;
  /// The path of the Amazon DocumentDB or MongoDB target (database/collection).
  final pulumi.Input<String> path;
  /// Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table. Default value is `true`.
  final pulumi.Input<bool>? scanAll;

  /// Creates a new [CrawlerMongodbTarget].
  /// [connectionName] The name of the connection to use to connect to the Amazon DocumentDB or MongoDB target.
  /// [path] The path of the Amazon DocumentDB or MongoDB target (database/collection).
  /// [scanAll] Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table. Default value is `true`.
  const CrawlerMongodbTarget({
    required this.connectionName,
    required this.path,
    this.scanAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'path': path,
      'scanAll': ?scanAll,
    };
  }

  factory CrawlerMongodbTarget.fromMap(Map<String, dynamic> map) {
    return CrawlerMongodbTarget(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      scanAll: (() { final guardedValue = map['scanAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

