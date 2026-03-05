// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_web_configuration_crawler_configuration_crawler_limits.dart';

class AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration {
  /// Configuration of crawl limits for the web URLs. See `crawler_limits` block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits>? crawlerLimits;
  /// List of one or more exclusion regular expression patterns to exclude certain object types that adhere to the pattern.
  final pulumi.Input<List<String>>? exclusionFilters;
  /// List of one or more inclusion regular expression patterns to include certain object types that adhere to the pattern.
  final pulumi.Input<List<String>>? inclusionFilters;
  /// Scope of what is crawled for your URLs.
  final pulumi.Input<String>? scope;
  /// String used for identifying the crawler or a bot when it accesses a web server. Default value is `bedrockbot_UUID`.
  final pulumi.Input<String>? userAgent;

  /// Creates a new [AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration].
  /// [crawlerLimits] Configuration of crawl limits for the web URLs. See `crawler_limits` block for details.
  /// [exclusionFilters] List of one or more exclusion regular expression patterns to exclude certain object types that adhere to the pattern.
  /// [inclusionFilters] List of one or more inclusion regular expression patterns to include certain object types that adhere to the pattern.
  /// [scope] Scope of what is crawled for your URLs.
  /// [userAgent] String used for identifying the crawler or a bot when it accesses a web server. Default value is `bedrockbot_UUID`.
  AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration({
    this.crawlerLimits,
    this.exclusionFilters,
    this.inclusionFilters,
    this.scope,
    this.userAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crawlerLimits': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits, Map<String, dynamic>>(crawlerLimits, (value) => value.toMap()),
      'exclusionFilters': ?exclusionFilters,
      'inclusionFilters': ?inclusionFilters,
      'scope': ?scope,
      'userAgent': ?userAgent,
    };
  }

  factory AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfiguration(
      crawlerLimits: (() { final guardedValue = map['crawlerLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationWebConfigurationCrawlerConfigurationCrawlerLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exclusionFilters: (() { final guardedValue = map['exclusionFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inclusionFilters: (() { final guardedValue = map['inclusionFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAgent: (() { final guardedValue = map['userAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

