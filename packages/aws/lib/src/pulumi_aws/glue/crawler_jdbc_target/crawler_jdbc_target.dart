// ignore_for_file: unused_element, unnecessary_cast

class CrawlerJdbcTarget {
  /// The name of the connection to use to connect to the JDBC target.
  final String connectionName;

  /// Specify a value of `RAWTYPES` or `COMMENTS` to enable additional metadata intable responses. `RAWTYPES` provides the native-level datatype. `COMMENTS` provides comments associated with a column or table in the database.
  final List<String>? enableAdditionalMetadatas;

  /// A list of glob patterns used to exclude from the crawl.
  final List<String>? exclusions;

  /// The path of the JDBC target.
  final String path;

  CrawlerJdbcTarget({
    required this.connectionName,
    this.enableAdditionalMetadatas,
    this.exclusions,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionName'] = connectionName;
    final enableAdditionalMetadatasValue = enableAdditionalMetadatas;
    if (enableAdditionalMetadatasValue != null) {
      map['enableAdditionalMetadatas'] = enableAdditionalMetadatasValue;
    }
    final exclusionsValue = exclusions;
    if (exclusionsValue != null) {
      map['exclusions'] = exclusionsValue;
    }
    map['path'] = path;
    return map;
  }

  factory CrawlerJdbcTarget.fromMap(Map<String, dynamic> map) {
    return CrawlerJdbcTarget(
      connectionName: map['connectionName'] as String,
      enableAdditionalMetadatas: map['enableAdditionalMetadatas'] == null
          ? null
          : (map['enableAdditionalMetadatas'] as List).cast<String>(),
      exclusions: map['exclusions'] == null
          ? null
          : (map['exclusions'] as List).cast<String>(),
      path: map['path'] as String,
    );
  }
}
