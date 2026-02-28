// ignore_for_file: unused_element, unnecessary_cast

class CrawlerDynamodbTarget {
  /// The name of the DynamoDB table to crawl.
  final String path;

  /// Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table.  defaults to `true`.
  final bool? scanAll;

  /// The percentage of the configured read capacity units to use by the AWS Glue crawler. The valid values are null or a value between 0.1 to 1.5.
  final double? scanRate;

  /// Creates a new [CrawlerDynamodbTarget].
  /// [path] The name of the DynamoDB table to crawl.
  /// [scanAll] Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table.  defaults to `true`.
  /// [scanRate] The percentage of the configured read capacity units to use by the AWS Glue crawler. The valid values are null or a value between 0.1 to 1.5.
  CrawlerDynamodbTarget({
    required this.path,
    this.scanAll,
    this.scanRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    final scanAllValue = scanAll;
    if (scanAllValue != null) {
      map['scanAll'] = scanAllValue;
    }
    final scanRateValue = scanRate;
    if (scanRateValue != null) {
      map['scanRate'] = scanRateValue;
    }
    return map;
  }

  factory CrawlerDynamodbTarget.fromMap(Map<String, dynamic> map) {
    return CrawlerDynamodbTarget(
      path: map['path'] as String,
      scanAll: map['scanAll'] == null ? null : map['scanAll'] as bool,
      scanRate: map['scanRate'] == null ? null : map['scanRate'] as double,
    );
  }
}
