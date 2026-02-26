// ignore_for_file: unused_element, unnecessary_cast

class CrawlerHudiTarget {
  /// The name of the connection to use to connect to the Hudi target.
  final String? connectionName;

  /// A list of glob patterns used to exclude from the crawl.
  final List<String>? exclusions;

  /// The maximum depth of Amazon S3 paths that the crawler can traverse to discover the Hudi metadata folder in your Amazon S3 path. Used to limit the crawler run time. Valid values are between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`20`" pulumi-lang-dotnet="`20`" pulumi-lang-go="`20`" pulumi-lang-python="`20`" pulumi-lang-yaml="`20`" pulumi-lang-java="`20`">`20`</span>.
  final int maximumTraversalDepth;

  /// One or more Amazon S3 paths that contains Hudi metadata folders as s3://bucket/prefix.
  final List<String> paths;

  CrawlerHudiTarget({
    this.connectionName,
    this.exclusions,
    required this.maximumTraversalDepth,
    required this.paths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionNameValue = connectionName;
    if (connectionNameValue != null) {
      map['connectionName'] = connectionNameValue;
    }
    final exclusionsValue = exclusions;
    if (exclusionsValue != null) {
      map['exclusions'] = exclusionsValue;
    }
    map['maximumTraversalDepth'] = maximumTraversalDepth;
    map['paths'] = paths;
    return map;
  }

  factory CrawlerHudiTarget.fromMap(Map<String, dynamic> map) {
    return CrawlerHudiTarget(
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
