// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits {
  /// Max number of web pages crawled from your source URLs, up to 25,000 pages.
  final pulumi.Input<int?>? maxPages;
  /// Max rate at which pages are crawled, up to 300 per minute per host.
  final pulumi.Input<int?>? rateLimit;

  /// Creates a new [AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits].
  /// [maxPages] Max number of web pages crawled from your source URLs, up to 25,000 pages.
  /// [rateLimit] Max rate at which pages are crawled, up to 300 per minute per host.
  const AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits({
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
      maxPages: (() { final guardedValue = map['maxPages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      rateLimit: (() { final guardedValue = map['rateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
