// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CrawlerCatalogTarget {
  /// The name of the connection for an Amazon S3-backed Data Catalog table to be a target of the crawl when using a Catalog connection type paired with a `NETWORK` Connection type.
  final pulumi.Input<String>? connectionName;
  /// The name of the Glue database to be synchronized.
  final pulumi.Input<String> databaseName;
  /// A valid Amazon SQS ARN.
  ///
  /// > **Note:** `deletion_behavior` of catalog target doesn't support `DEPRECATE_IN_DATABASE`.
  ///
  /// > **Note:** `configuration` for catalog target crawlers will have `{ ... "Grouping": { "TableGroupingPolicy": "CombineCompatibleSchemas"} }` by default.
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
  CrawlerCatalogTarget({
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
      connectionName: map['connectionName'] == null ? null : (map['connectionName'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      dlqEventQueueArn: map['dlqEventQueueArn'] == null ? null : (map['dlqEventQueueArn'] as String).input(),
      eventQueueArn: map['eventQueueArn'] == null ? null : (map['eventQueueArn'] as String).input(),
      tables: ((map['tables'] as List).cast<String>()).input(),
    );
  }
}

