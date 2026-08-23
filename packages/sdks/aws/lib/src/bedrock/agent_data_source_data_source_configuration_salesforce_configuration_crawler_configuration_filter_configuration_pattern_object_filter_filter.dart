// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter {
  final pulumi.Input<List<String>>? exclusionFilters;
  final pulumi.Input<List<String>>? inclusionFilters;
  /// The supported object type or content type of the data source.
  final pulumi.Input<String> objectType;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter].
  /// [exclusionFilters] Optional.
  /// [inclusionFilters] Optional.
  /// [objectType] The supported object type or content type of the data source.
  const AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter({
    this.exclusionFilters,
    this.inclusionFilters,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionFilters': ?exclusionFilters,
      'inclusionFilters': ?inclusionFilters,
      'objectType': objectType,
    };
  }

  factory AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter(
      exclusionFilters: (() { final guardedValue = map['exclusionFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inclusionFilters: (() { final guardedValue = map['inclusionFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}
