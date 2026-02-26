// ignore_for_file: unused_element, unnecessary_cast

class CrawlerLineageConfiguration {
  /// Specifies whether data lineage is enabled for the crawler. Valid values are: `ENABLE` and `DISABLE`. Default value is `DISABLE`.
  final String? crawlerLineageSettings;

  CrawlerLineageConfiguration({
    this.crawlerLineageSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final crawlerLineageSettingsValue = crawlerLineageSettings;
    if (crawlerLineageSettingsValue != null) {
      map['crawlerLineageSettings'] = crawlerLineageSettingsValue;
    }
    return map;
  }

  factory CrawlerLineageConfiguration.fromMap(Map<String, dynamic> map) {
    return CrawlerLineageConfiguration(
      crawlerLineageSettings: map['crawlerLineageSettings'] == null
          ? null
          : map['crawlerLineageSettings'] as String,
    );
  }
}
