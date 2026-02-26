// ignore_for_file: unused_element, unnecessary_cast

class DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration {
  /// The list of seed or starting point URLs of the websites you want to crawl. The list can include a maximum of <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span> seed URLs. Array Members: Minimum number of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> items. Maximum number of <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span> items. Length Constraints: Minimum length of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Maximum length of <span pulumi-lang-nodejs="`2048`" pulumi-lang-dotnet="`2048`" pulumi-lang-go="`2048`" pulumi-lang-python="`2048`" pulumi-lang-yaml="`2048`" pulumi-lang-java="`2048`">`2048`</span>.
  final List<String> seedUrls;

  /// The default mode is set to `HOST_ONLY`. You can choose one of the following modes:
  /// * `HOST_ONLY` - crawl only the website host names. For example, if the seed URL is `"abc.example.com"`, then only URLs with host name `"abc.example.com"` are crawled.
  /// * `SUBDOMAINS` - crawl the website host names with subdomains. For example, if the seed URL is `"abc.example.com"`, then `"a.abc.example.com"` and `"b.abc.example.com"` are also crawled.
  /// * `EVERYTHING` - crawl the website host names with subdomains and other domains that the webpages link to.
  final String? webCrawlerMode;

  DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration({
    required this.seedUrls,
    this.webCrawlerMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['seedUrls'] = seedUrls;
    final webCrawlerModeValue = webCrawlerMode;
    if (webCrawlerModeValue != null) {
      map['webCrawlerMode'] = webCrawlerModeValue;
    }
    return map;
  }

  factory DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfiguration(
      seedUrls: (map['seedUrls'] as List).cast<String>(),
      webCrawlerMode: map['webCrawlerMode'] == null
          ? null
          : map['webCrawlerMode'] as String,
    );
  }
}
