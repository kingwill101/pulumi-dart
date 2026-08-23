// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CrawlerCatalogTarget {
  /// The name of the connection for an Amazon S3-backed Data Catalog table to be a target of the crawl when using a Catalog connection type paired with a `NETWORK` Connection type.
  final pulumi.Input<String>? connectionName;
  /// The name of the Glue database to be synchronized.
  final pulumi.Input<String> databaseName;
  /// A valid Amazon SQS ARN.
  ///
  /// &gt; **Note:** `deletionBehavior` of catalog target doesn't support `DEPRECATE_IN_DATABASE`.
  ///
  /// &gt; **Note:** `configuration` for catalog target crawlers will have `{ ... "Grouping": { "TableGroupingPolicy": "CombineCompatibleSchemas"} }` by default.
  final pulumi.Input<String>? dlqEventQueueArn;
  /// A valid Amazon SQS ARN.
  final pulumi.Input<String>? eventQueueArn;
  /// A list of catalog tables to be synchronized.
  final pulumi.Input<List<String>> tables;

  /// Creates a new [CrawlerCatalogTarget].
  /// [connectionName] The name of the connection for an Amazon S3-backed Data Catalog table to be a target of the crawl when using a Catalog connection type paired with a `NETWORK` Connection type.
  /// [databaseName] The name of the Glue database to be synchronized.
  /// [dlqEventQueueArn] A valid Amazon SQS ARN.
  /// [eventQueueArn] A valid Amazon SQS ARN.
  /// [tables] A list of catalog tables to be synchronized.
  const CrawlerCatalogTarget({
    this.connectionName,
    required this.databaseName,
    this.dlqEventQueueArn,
    this.eventQueueArn,
    required this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'databaseName': databaseName,
      'dlqEventQueueArn': ?dlqEventQueueArn,
      'eventQueueArn': ?eventQueueArn,
      'tables': tables,
    };
  }

  factory CrawlerCatalogTarget.fromMap(Map<String, dynamic> map) {
    return CrawlerCatalogTarget(
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      dlqEventQueueArn: (() { final guardedValue = map['dlqEventQueueArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventQueueArn: (() { final guardedValue = map['eventQueueArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tables: pulumi.Input.fromValue((map['tables'] as List).cast<String>()),
    );
  }
}
