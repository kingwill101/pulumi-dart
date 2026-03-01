// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter {
  final List<String>? exclusionFilters;
  final List<String>? inclusionFilters;

  /// The supported object type or content type of the data source.
  final String objectType;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter].
  /// [exclusionFilters] Optional.
  /// [inclusionFilters] Optional.
  /// [objectType] The supported object type or content type of the data source.
  AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter({
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

  factory AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentDataSourceDataSourceConfigurationSharePointConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter(
      exclusionFilters: map['exclusionFilters'] == null
          ? null
          : (map['exclusionFilters'] as List).cast<String>(),
      inclusionFilters: map['inclusionFilters'] == null
          ? null
          : (map['inclusionFilters'] as List).cast<String>(),
      objectType: map['objectType'] as String,
    );
  }
}
