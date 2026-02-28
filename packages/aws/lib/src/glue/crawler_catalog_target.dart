// ignore_for_file: unused_element, unnecessary_cast

class CrawlerCatalogTarget {
  /// The name of the connection for an Amazon S3-backed Data Catalog table to be a target of the crawl when using a Catalog connection type paired with a `NETWORK` Connection type.
  final String? connectionName;

  /// The name of the Glue database to be synchronized.
  final String databaseName;

  /// A valid Amazon SQS ARN.
  ///
  /// > **Note:** `deletion_behavior` of catalog target doesn't support `DEPRECATE_IN_DATABASE`.
  ///
  /// > **Note:** `configuration` for catalog target crawlers will have `{ ... "Grouping": { "TableGroupingPolicy": "CombineCompatibleSchemas"} }` by default.
  final String? dlqEventQueueArn;

  /// A valid Amazon SQS ARN.
  final String? eventQueueArn;

  /// A list of catalog tables to be synchronized.
  final List<String> tables;

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
    final map = <String, dynamic>{};
    final connectionNameValue = connectionName;
    if (connectionNameValue != null) {
      map['connectionName'] = connectionNameValue;
    }
    map['databaseName'] = databaseName;
    final dlqEventQueueArnValue = dlqEventQueueArn;
    if (dlqEventQueueArnValue != null) {
      map['dlqEventQueueArn'] = dlqEventQueueArnValue;
    }
    final eventQueueArnValue = eventQueueArn;
    if (eventQueueArnValue != null) {
      map['eventQueueArn'] = eventQueueArnValue;
    }
    map['tables'] = tables;
    return map;
  }

  factory CrawlerCatalogTarget.fromMap(Map<String, dynamic> map) {
    return CrawlerCatalogTarget(
      connectionName: map['connectionName'] == null
          ? null
          : map['connectionName'] as String,
      databaseName: map['databaseName'] as String,
      dlqEventQueueArn: map['dlqEventQueueArn'] == null
          ? null
          : map['dlqEventQueueArn'] as String,
      eventQueueArn:
          map['eventQueueArn'] == null ? null : map['eventQueueArn'] as String,
      tables: (map['tables'] as List).cast<String>(),
    );
  }
}
