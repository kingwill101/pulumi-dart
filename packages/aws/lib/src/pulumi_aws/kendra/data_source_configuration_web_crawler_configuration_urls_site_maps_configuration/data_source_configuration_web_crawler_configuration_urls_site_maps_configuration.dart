// ignore_for_file: unused_element, unnecessary_cast

class DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration {
  /// The list of sitemap URLs of the websites you want to crawl. The list can include a maximum of `3` sitemap URLs.
  final List<String> siteMaps;

  DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration({
    required this.siteMaps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['siteMaps'] = siteMaps;
    return map;
  }

  factory DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration(
      siteMaps: (map['siteMaps'] as List).cast<String>(),
    );
  }
}
