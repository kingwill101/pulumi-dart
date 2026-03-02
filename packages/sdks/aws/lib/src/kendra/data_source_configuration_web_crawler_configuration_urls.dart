// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_configuration_web_crawler_configuration_urls_seed_url_configuration.dart';
import 'data_source_configuration_web_crawler_configuration_urls_site_maps_configuration.dart';

class DataSourceConfigurationWebCrawlerConfigurationUrls {
  /// A block that specifies the configuration of the seed or starting point URLs of the websites you want to crawl. You can choose to crawl only the website host names, or the website host names with subdomains, or the website host names with subdomains and other domains that the webpages link to. You can list up to `100` seed URLs. Detailed below.
  final pulumi.Input<DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration>? seedUrlConfiguration;
  /// A block that specifies the configuration of the sitemap URLs of the websites you want to crawl. Only URLs belonging to the same website host names are crawled. You can list up to `3` sitemap URLs. Detailed below.
  final pulumi.Input<DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration>? siteMapsConfiguration;

  /// Creates a new [DataSourceConfigurationWebCrawlerConfigurationUrls].
  /// [seedUrlConfiguration] A block that specifies the configuration of the seed or starting point URLs of the websites you want to crawl. You can choose to crawl only the website host names, or the website host names with subdomains, or the website host names with subdomains and other domains that the webpages link to. You can list up to `100` seed URLs. Detailed below.
  /// [siteMapsConfiguration] A block that specifies the configuration of the sitemap URLs of the websites you want to crawl. Only URLs belonging to the same website host names are crawled. You can list up to `3` sitemap URLs. Detailed below.
  DataSourceConfigurationWebCrawlerConfigurationUrls({
    this.seedUrlConfiguration,
    this.siteMapsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seedUrlConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration, Map<String, dynamic>>(seedUrlConfiguration, (value) => value.toMap()),
      'siteMapsConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration, Map<String, dynamic>>(siteMapsConfiguration, (value) => value.toMap()),
    };
  }

  factory DataSourceConfigurationWebCrawlerConfigurationUrls.fromMap(Map<String, dynamic> map) {
    return DataSourceConfigurationWebCrawlerConfigurationUrls(
      seedUrlConfiguration: map['seedUrlConfiguration'] == null ? null : ((DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration.fromMap((map['seedUrlConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      siteMapsConfiguration: map['siteMapsConfiguration'] == null ? null : ((DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfiguration.fromMap((map['siteMapsConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

