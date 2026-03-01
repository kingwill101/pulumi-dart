// ignore_for_file: unused_element, unnecessary_cast

class CrawlerLineageConfiguration {
  /// Specifies whether data lineage is enabled for the crawler. Valid values are: `ENABLE` and `DISABLE`. Default value is `DISABLE`.
  final String? crawlerLineageSettings;

  /// Creates a new [CrawlerLineageConfiguration].
  /// [crawlerLineageSettings] Specifies whether data lineage is enabled for the crawler. Valid values are: `ENABLE` and `DISABLE`. Default value is `DISABLE`.
  CrawlerLineageConfiguration({this.crawlerLineageSettings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'crawlerLineageSettings': ?crawlerLineageSettings};
  }

  factory CrawlerLineageConfiguration.fromMap(Map<String, dynamic> map) {
    return CrawlerLineageConfiguration(
      crawlerLineageSettings: map['crawlerLineageSettings'] == null
          ? null
          : map['crawlerLineageSettings'] as String,
    );
  }
}
