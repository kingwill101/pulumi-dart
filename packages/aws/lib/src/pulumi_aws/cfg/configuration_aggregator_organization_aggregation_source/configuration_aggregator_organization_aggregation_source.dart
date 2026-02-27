// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationAggregatorOrganizationAggregationSource {
  /// If true, aggregate existing AWS Config regions and future regions.
  final bool? allRegions;

  /// List of source regions being aggregated.
  final List<String>? regions;

  /// ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.
  ///
  /// Either `regions` or `all_regions` (as true) must be specified.
  final String roleArn;

  ConfigurationAggregatorOrganizationAggregationSource({
    this.allRegions,
    this.regions,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allRegionsValue = allRegions;
    if (allRegionsValue != null) {
      map['allRegions'] = allRegionsValue;
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = regionsValue;
    }
    map['roleArn'] = roleArn;
    return map;
  }

  factory ConfigurationAggregatorOrganizationAggregationSource.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationAggregatorOrganizationAggregationSource(
      allRegions: map['allRegions'] == null ? null : map['allRegions'] as bool,
      regions: map['regions'] == null
          ? null
          : (map['regions'] as List).cast<String>(),
      roleArn: map['roleArn'] as String,
    );
  }
}
