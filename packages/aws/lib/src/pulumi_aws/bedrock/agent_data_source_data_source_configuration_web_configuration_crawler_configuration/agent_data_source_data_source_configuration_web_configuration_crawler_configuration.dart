// ignore_for_file: unused_element, unnecessary_cast

import '../agent_data_source_data_source_configuration_web_configuration_crawler_configuration_crawler_limits/agent_data_source_data_source_configuration_web_configuration_crawler_configuration_crawler_limits.dart';

class AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration {
  /// Configuration of crawl limits for the web URLs. See <span pulumi-lang-nodejs="`crawlerLimits`" pulumi-lang-dotnet="`CrawlerLimits`" pulumi-lang-go="`crawlerLimits`" pulumi-lang-python="`crawler_limits`" pulumi-lang-yaml="`crawlerLimits`" pulumi-lang-java="`crawlerLimits`">`crawler_limits`</span> block for details.
  final AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits?
      crawlerLimits;

  /// List of one or more exclusion regular expression patterns to exclude certain object types that adhere to the pattern.
  final List<String>? exclusionFilters;

  /// List of one or more inclusion regular expression patterns to include certain object types that adhere to the pattern.
  final List<String>? inclusionFilters;

  /// Scope of what is crawled for your URLs.
  final String? scope;

  /// String used for identifying the crawler or a bot when it accesses a web server. Default value is `bedrockbot_UUID`.
  final String? userAgent;

  AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration({
    this.crawlerLimits,
    this.exclusionFilters,
    this.inclusionFilters,
    this.scope,
    this.userAgent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final crawlerLimitsValue = crawlerLimits;
    if (crawlerLimitsValue != null) {
      map['crawlerLimits'] = crawlerLimitsValue.toMap();
    }
    final exclusionFiltersValue = exclusionFilters;
    if (exclusionFiltersValue != null) {
      map['exclusionFilters'] = exclusionFiltersValue;
    }
    final inclusionFiltersValue = inclusionFilters;
    if (inclusionFiltersValue != null) {
      map['inclusionFilters'] = inclusionFiltersValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final userAgentValue = userAgent;
    if (userAgentValue != null) {
      map['userAgent'] = userAgentValue;
    }
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration(
      crawlerLimits: map['crawlerLimits'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits
              .fromMap((map['crawlerLimits'] as Map).cast<String, dynamic>()),
      exclusionFilters: map['exclusionFilters'] == null
          ? null
          : (map['exclusionFilters'] as List).cast<String>(),
      inclusionFilters: map['inclusionFilters'] == null
          ? null
          : (map['inclusionFilters'] as List).cast<String>(),
      scope: map['scope'] == null ? null : map['scope'] as String,
      userAgent: map['userAgent'] == null ? null : map['userAgent'] as String,
    );
  }
}
