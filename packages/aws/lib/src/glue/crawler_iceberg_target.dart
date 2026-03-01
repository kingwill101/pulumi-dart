// ignore_for_file: unused_element, unnecessary_cast

class CrawlerIcebergTarget {
  /// The name of the connection to use to connect to the Iceberg target.
  final String? connectionName;

  /// A list of glob patterns used to exclude from the crawl.
  final List<String>? exclusions;

  /// The maximum depth of Amazon S3 paths that the crawler can traverse to discover the Iceberg metadata folder in your Amazon S3 path. Used to limit the crawler run time. Valid values are between `1` and `20`.
  final int maximumTraversalDepth;

  /// One or more Amazon S3 paths that contains Iceberg metadata folders as s3://bucket/prefix.
  final List<String> paths;

  /// Creates a new [CrawlerIcebergTarget].
  /// [connectionName] The name of the connection to use to connect to the Iceberg target.
  /// [exclusions] A list of glob patterns used to exclude from the crawl.
  /// [maximumTraversalDepth] The maximum depth of Amazon S3 paths that the crawler can traverse to discover the Iceberg metadata folder in your Amazon S3 path. Used to limit the crawler run time. Valid values are between `1` and `20`.
  /// [paths] One or more Amazon S3 paths that contains Iceberg metadata folders as s3://bucket/prefix.
  CrawlerIcebergTarget({
    this.connectionName,
    this.exclusions,
    required this.maximumTraversalDepth,
    required this.paths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'exclusions': ?exclusions,
      'maximumTraversalDepth': maximumTraversalDepth,
      'paths': paths,
    };
  }

  factory CrawlerIcebergTarget.fromMap(Map<String, dynamic> map) {
    return CrawlerIcebergTarget(
      connectionName: map['connectionName'] == null
          ? null
          : map['connectionName'] as String,
      exclusions: map['exclusions'] == null
          ? null
          : (map['exclusions'] as List).cast<String>(),
      maximumTraversalDepth: map['maximumTraversalDepth'] as int,
      paths: (map['paths'] as List).cast<String>(),
    );
  }
}
