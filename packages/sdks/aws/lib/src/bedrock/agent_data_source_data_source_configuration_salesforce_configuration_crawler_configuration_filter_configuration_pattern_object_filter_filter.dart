// ignore_for_file: unused_element, unnecessary_cast


class AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter {
  final List<String>? exclusionFilters;
  final List<String>? inclusionFilters;
  /// The supported object type or content type of the data source.
  final String objectType;

  /// Creates a new [AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter].
  /// [exclusionFilters] Optional.
  /// [inclusionFilters] Optional.
  /// [objectType] The supported object type or content type of the data source.
  AgentDataSourceDataSourceConfigurationSalesforceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter({
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
      exclusionFilters: map['exclusionFilters'] == null ? null : (map['exclusionFilters'] as List).cast<String>(),
      inclusionFilters: map['inclusionFilters'] == null ? null : (map['inclusionFilters'] as List).cast<String>(),
      objectType: map['objectType'] as String,
    );
  }
}

