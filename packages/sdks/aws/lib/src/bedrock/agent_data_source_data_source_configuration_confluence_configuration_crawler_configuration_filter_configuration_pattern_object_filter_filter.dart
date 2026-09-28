// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter {
  /// One or more exclusion regular expression patterns to exclude object types that match the pattern.
  final pulumi.Input<List<String>?>? exclusionFilters;
  /// One or more inclusion regular expression patterns to include object types that match the pattern.
  final pulumi.Input<List<String>?>? inclusionFilters;
  /// Object type or content type of the data source.
  final pulumi.Input<String> objectType;

  /// Creates a new [AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter].
  /// [exclusionFilters] One or more exclusion regular expression patterns to exclude object types that match the pattern.
  /// [inclusionFilters] One or more inclusion regular expression patterns to include object types that match the pattern.
  /// [objectType] Object type or content type of the data source.
  const AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter({
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

  factory AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter(
      exclusionFilters: (() { final guardedValue = map['exclusionFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inclusionFilters: (() { final guardedValue = map['inclusionFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}
