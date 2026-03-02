// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration {
  /// The list of sitemap URLs of the websites you want to crawl. The list can include a maximum of `3` sitemap URLs.
  final pulumi.Input<List<String>> siteMaps;

  /// Creates a new [DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration].
  /// [siteMaps] The list of sitemap URLs of the websites you want to crawl. The list can include a maximum of `3` sitemap URLs.
  DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration({
    required this.siteMaps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'siteMaps': siteMaps,
    };
  }

  factory DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration(
      siteMaps: ((map['siteMaps'] as List).cast<String>()).input(),
    );
  }
}

