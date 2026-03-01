// ignore_for_file: unused_element, unnecessary_cast


class AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits {
  /// Max number of web pages crawled from your source URLs, up to 25,000 pages.
  final int? maxPages;
  /// Max rate at which pages are crawled, up to 300 per minute per host.
  final int? rateLimit;

  /// Creates a new [AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits].
  /// [maxPages] Max number of web pages crawled from your source URLs, up to 25,000 pages.
  /// [rateLimit] Max rate at which pages are crawled, up to 300 per minute per host.
  AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits({
    this.maxPages,
    this.rateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPages': ?maxPages,
      'rateLimit': ?rateLimit,
    };
  }

  factory AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits(
      maxPages: map['maxPages'] == null ? null : map['maxPages'] as int,
      rateLimit: map['rateLimit'] == null ? null : map['rateLimit'] as int,
    );
  }
}

