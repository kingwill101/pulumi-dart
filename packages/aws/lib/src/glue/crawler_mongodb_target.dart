// ignore_for_file: unused_element, unnecessary_cast

class CrawlerMongodbTarget {
  /// The name of the connection to use to connect to the Amazon DocumentDB or MongoDB target.
  final String connectionName;

  /// The path of the Amazon DocumentDB or MongoDB target (database/collection).
  final String path;

  /// Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table. Default value is `true`.
  final bool? scanAll;

  /// Creates a new [CrawlerMongodbTarget].
  /// [connectionName] The name of the connection to use to connect to the Amazon DocumentDB or MongoDB target.
  /// [path] The path of the Amazon DocumentDB or MongoDB target (database/collection).
  /// [scanAll] Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table. Default value is `true`.
  CrawlerMongodbTarget({
    required this.connectionName,
    required this.path,
    this.scanAll,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionName'] = connectionName;
    map['path'] = path;
    final scanAllValue = scanAll;
    if (scanAllValue != null) {
      map['scanAll'] = scanAllValue;
    }
    return map;
  }

  factory CrawlerMongodbTarget.fromMap(Map<String, dynamic> map) {
    return CrawlerMongodbTarget(
      connectionName: map['connectionName'] as String,
      path: map['path'] as String,
      scanAll: map['scanAll'] == null ? null : map['scanAll'] as bool,
    );
  }
}
