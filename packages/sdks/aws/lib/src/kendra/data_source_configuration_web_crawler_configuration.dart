// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_configuration_web_crawler_configuration_authentication_configuration.dart';
import 'data_source_configuration_web_crawler_configuration_proxy_configuration.dart';
import 'data_source_configuration_web_crawler_configuration_urls.dart';

class DataSourceConfigurationWebCrawlerConfiguration {
  /// A block with the configuration information required to connect to websites using authentication. You can connect to websites using basic authentication of user name and password. You use a secret in AWS Secrets Manager to store your authentication credentials. You must provide the website host name and port number. For example, the host name of `https://a.example.com/page1.html` is `"a.example.com"` and the port is `443`, the standard port for HTTPS. Detailed below.
  final pulumi.Input<DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration>? authenticationConfiguration;
  /// Specifies the number of levels in a website that you want to crawl. The first level begins from the website seed or starting point URL. For example, if a website has 3 levels - index level (i.e. seed in this example), sections level, and subsections level - and you are only interested in crawling information up to the sections level (i.e. levels 0-1), you can set your depth to 1. The default crawl depth is set to `2`. Minimum value of `0`. Maximum value of `10`.
  final pulumi.Input<int>? crawlDepth;
  /// The maximum size (in MB) of a webpage or attachment to crawl. Files larger than this size (in MB) are skipped/not crawled. The default maximum size of a webpage or attachment is set to `50` MB. Minimum value of `1.0e-06`. Maximum value of `50`.
  final pulumi.Input<double>? maxContentSizePerPageInMegaBytes;
  /// The maximum number of URLs on a webpage to include when crawling a website. This number is per webpage. As a website’s webpages are crawled, any URLs the webpages link to are also crawled. URLs on a webpage are crawled in order of appearance. The default maximum links per page is `100`. Minimum value of `1`. Maximum value of `1000`.
  final pulumi.Input<int>? maxLinksPerPage;
  /// The maximum number of URLs crawled per website host per minute. The default maximum number of URLs crawled per website host per minute is `300`. Minimum value of `1`. Maximum value of `300`.
  final pulumi.Input<int>? maxUrlsPerMinuteCrawlRate;
  /// Configuration information required to connect to your internal websites via a web proxy. You must provide the website host name and port number. For example, the host name of `https://a.example.com/page1.html` is `"a.example.com"` and the port is `443`, the standard port for HTTPS. Web proxy credentials are optional and you can use them to connect to a web proxy server that requires basic authentication. To store web proxy credentials, you use a secret in [AWS Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html). Detailed below.
  final pulumi.Input<DataSourceConfigurationWebCrawlerConfigurationProxyConfiguration>? proxyConfiguration;
  /// A list of regular expression patterns to exclude certain URLs to crawl. URLs that match the patterns are excluded from the index. URLs that don't match the patterns are included in the index. If a URL matches both an inclusion and exclusion pattern, the exclusion pattern takes precedence and the URL file isn't included in the index. Array Members: Minimum number of `0` items. Maximum number of `100` items. Length Constraints: Minimum length of `1`. Maximum length of `150`.
  final pulumi.Input<List<String>>? urlExclusionPatterns;
  /// A list of regular expression patterns to include certain URLs to crawl. URLs that match the patterns are included in the index. URLs that don't match the patterns are excluded from the index. If a URL matches both an inclusion and exclusion pattern, the exclusion pattern takes precedence and the URL file isn't included in the index. Array Members: Minimum number of `0` items. Maximum number of `100` items. Length Constraints: Minimum length of `1`. Maximum length of `150`.
  final pulumi.Input<List<String>>? urlInclusionPatterns;
  /// A block that specifies the seed or starting point URLs of the websites or the sitemap URLs of the websites you want to crawl. You can include website subdomains. You can list up to `100` seed URLs and up to `3` sitemap URLs. You can only crawl websites that use the secure communication protocol, Hypertext Transfer Protocol Secure (HTTPS). If you receive an error when crawling a website, it could be that the website is blocked from crawling. When selecting websites to index, you must adhere to the [Amazon Acceptable Use Policy](https://aws.amazon.com/aup/) and all other Amazon terms. Remember that you must only use Amazon Kendra Web Crawler to index your own webpages, or webpages that you have authorization to index. Detailed below.
  final pulumi.Input<DataSourceConfigurationWebCrawlerConfigurationUrls> urls;

  /// Creates a new [DataSourceConfigurationWebCrawlerConfiguration].
  /// [authenticationConfiguration] A block with the configuration information required to connect to websites using authentication. You can connect to websites using basic authentication of user name and password. You use a secret in AWS Secrets Manager to store your authentication credentials. You must provide the website host name and port number. For example, the host name of `https://a.example.com/page1.html` is `"a.example.com"` and the port is `443`, the standard port for HTTPS. Detailed below.
  /// [crawlDepth] Specifies the number of levels in a website that you want to crawl. The first level begins from the website seed or starting point URL. For example, if a website has 3 levels - index level (i.e. seed in this example), sections level, and subsections level - and you are only interested in crawling information up to the sections level (i.e. levels 0-1), you can set your depth to 1. The default crawl depth is set to `2`. Minimum value of `0`. Maximum value of `10`.
  /// [maxContentSizePerPageInMegaBytes] The maximum size (in MB) of a webpage or attachment to crawl. Files larger than this size (in MB) are skipped/not crawled. The default maximum size of a webpage or attachment is set to `50` MB. Minimum value of `1.0e-06`. Maximum value of `50`.
  /// [maxLinksPerPage] The maximum number of URLs on a webpage to include when crawling a website. This number is per webpage. As a website’s webpages are crawled, any URLs the webpages link to are also crawled. URLs on a webpage are crawled in order of appearance. The default maximum links per page is `100`. Minimum value of `1`. Maximum value of `1000`.
  /// [maxUrlsPerMinuteCrawlRate] The maximum number of URLs crawled per website host per minute. The default maximum number of URLs crawled per website host per minute is `300`. Minimum value of `1`. Maximum value of `300`.
  /// [proxyConfiguration] Configuration information required to connect to your internal websites via a web proxy. You must provide the website host name and port number. For example, the host name of `https://a.example.com/page1.html` is `"a.example.com"` and the port is `443`, the standard port for HTTPS. Web proxy credentials are optional and you can use them to connect to a web proxy server that requires basic authentication. To store web proxy credentials, you use a secret in [AWS Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html). Detailed below.
  /// [urlExclusionPatterns] A list of regular expression patterns to exclude certain URLs to crawl. URLs that match the patterns are excluded from the index. URLs that don't match the patterns are included in the index. If a URL matches both an inclusion and exclusion pattern, the exclusion pattern takes precedence and the URL file isn't included in the index. Array Members: Minimum number of `0` items. Maximum number of `100` items. Length Constraints: Minimum length of `1`. Maximum length of `150`.
  /// [urlInclusionPatterns] A list of regular expression patterns to include certain URLs to crawl. URLs that match the patterns are included in the index. URLs that don't match the patterns are excluded from the index. If a URL matches both an inclusion and exclusion pattern, the exclusion pattern takes precedence and the URL file isn't included in the index. Array Members: Minimum number of `0` items. Maximum number of `100` items. Length Constraints: Minimum length of `1`. Maximum length of `150`.
  /// [urls] A block that specifies the seed or starting point URLs of the websites or the sitemap URLs of the websites you want to crawl. You can include website subdomains. You can list up to `100` seed URLs and up to `3` sitemap URLs. You can only crawl websites that use the secure communication protocol, Hypertext Transfer Protocol Secure (HTTPS). If you receive an error when crawling a website, it could be that the website is blocked from crawling. When selecting websites to index, you must adhere to the [Amazon Acceptable Use Policy](https://aws.amazon.com/aup/) and all other Amazon terms. Remember that you must only use Amazon Kendra Web Crawler to index your own webpages, or webpages that you have authorization to index. Detailed below.
  DataSourceConfigurationWebCrawlerConfiguration({
    this.authenticationConfiguration,
    this.crawlDepth,
    this.maxContentSizePerPageInMegaBytes,
    this.maxLinksPerPage,
    this.maxUrlsPerMinuteCrawlRate,
    this.proxyConfiguration,
    this.urlExclusionPatterns,
    this.urlInclusionPatterns,
    required this.urls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration, Map<String, dynamic>>(authenticationConfiguration, (value) => value.toMap()),
      'crawlDepth': ?crawlDepth,
      'maxContentSizePerPageInMegaBytes': ?maxContentSizePerPageInMegaBytes,
      'maxLinksPerPage': ?maxLinksPerPage,
      'maxUrlsPerMinuteCrawlRate': ?maxUrlsPerMinuteCrawlRate,
      'proxyConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSourceConfigurationWebCrawlerConfigurationProxyConfiguration, Map<String, dynamic>>(proxyConfiguration, (value) => value.toMap()),
      'urlExclusionPatterns': ?urlExclusionPatterns,
      'urlInclusionPatterns': ?urlInclusionPatterns,
      'urls': pulumi.Input.mapInputValue<DataSourceConfigurationWebCrawlerConfigurationUrls, Map<String, dynamic>>(urls, (value) => value.toMap()),
    };
  }

  factory DataSourceConfigurationWebCrawlerConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSourceConfigurationWebCrawlerConfiguration(
      authenticationConfiguration: map['authenticationConfiguration'] == null ? null : ((DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration.fromMap((map['authenticationConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      crawlDepth: map['crawlDepth'] == null ? null : ((map['crawlDepth'] as int).input()).input(),
      maxContentSizePerPageInMegaBytes: map['maxContentSizePerPageInMegaBytes'] == null ? null : ((map['maxContentSizePerPageInMegaBytes'] as double).input()).input(),
      maxLinksPerPage: map['maxLinksPerPage'] == null ? null : ((map['maxLinksPerPage'] as int).input()).input(),
      maxUrlsPerMinuteCrawlRate: map['maxUrlsPerMinuteCrawlRate'] == null ? null : ((map['maxUrlsPerMinuteCrawlRate'] as int).input()).input(),
      proxyConfiguration: map['proxyConfiguration'] == null ? null : ((DataSourceConfigurationWebCrawlerConfigurationProxyConfiguration.fromMap((map['proxyConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      urlExclusionPatterns: map['urlExclusionPatterns'] == null ? null : (((map['urlExclusionPatterns'] as List).cast<String>()).input()).input(),
      urlInclusionPatterns: map['urlInclusionPatterns'] == null ? null : (((map['urlInclusionPatterns'] as List).cast<String>()).input()).input(),
      urls: (DataSourceConfigurationWebCrawlerConfigurationUrls.fromMap((map['urls']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

