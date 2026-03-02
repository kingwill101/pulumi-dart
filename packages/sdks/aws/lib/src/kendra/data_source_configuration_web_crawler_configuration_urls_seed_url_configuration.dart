// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration {
  /// The list of seed or starting point URLs of the websites you want to crawl. The list can include a maximum of `100` seed URLs. Array Members: Minimum number of `0` items. Maximum number of `100` items. Length Constraints: Minimum length of `1`. Maximum length of `2048`.
  final pulumi.Input<List<String>> seedUrls;
  /// The default mode is set to `HOST_ONLY`. You can choose one of the following modes:
  /// * `HOST_ONLY` - crawl only the website host names. For example, if the seed URL is `"abc.example.com"`, then only URLs with host name `"abc.example.com"` are crawled.
  /// * `SUBDOMAINS` - crawl the website host names with subdomains. For example, if the seed URL is `"abc.example.com"`, then `"a.abc.example.com"` and `"b.abc.example.com"` are also crawled.
  /// * `EVERYTHING` - crawl the website host names with subdomains and other domains that the webpages link to.
  final pulumi.Input<String>? webCrawlerMode;

  /// Creates a new [DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration].
  /// [seedUrls] The list of seed or starting point URLs of the websites you want to crawl. The list can include a maximum of `100` seed URLs. Array Members: Minimum number of `0` items. Maximum number of `100` items. Length Constraints: Minimum length of `1`. Maximum length of `2048`.
  /// [webCrawlerMode] The default mode is set to `HOST_ONLY`. You can choose one of the following modes:
  DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration({
    required this.seedUrls,
    this.webCrawlerMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seedUrls': seedUrls,
      'webCrawlerMode': ?webCrawlerMode,
    };
  }

  factory DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration(
      seedUrls: ((map['seedUrls'] as List).cast<String>()).input(),
      webCrawlerMode: map['webCrawlerMode'] == null ? null : ((map['webCrawlerMode'] as String).input()).input(),
    );
  }
}

