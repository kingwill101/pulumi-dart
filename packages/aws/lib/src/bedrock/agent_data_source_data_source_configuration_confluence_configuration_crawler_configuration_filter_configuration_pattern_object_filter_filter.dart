// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter {
  final List<String>? exclusionFilters;
  final List<String>? inclusionFilters;

  /// The supported object type or content type of the data source.
  final String objectType;

  /// Creates a new [AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter].
  /// [exclusionFilters] Optional.
  /// [inclusionFilters] Optional.
  /// [objectType] The supported object type or content type of the data source.
  AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter({
    this.exclusionFilters,
    this.inclusionFilters,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exclusionFiltersValue = exclusionFilters;
    if (exclusionFiltersValue != null) {
      map['exclusionFilters'] = exclusionFiltersValue;
    }
    final inclusionFiltersValue = inclusionFilters;
    if (inclusionFiltersValue != null) {
      map['inclusionFilters'] = inclusionFiltersValue;
    }
    map['objectType'] = objectType;
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationConfluenceConfigurationCrawlerConfigurationFilterConfigurationPatternObjectFilterFilter(
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
