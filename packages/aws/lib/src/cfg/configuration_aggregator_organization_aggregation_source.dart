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

  /// Creates a new [ConfigurationAggregatorOrganizationAggregationSource].
  /// [allRegions] If true, aggregate existing AWS Config regions and future regions.
  /// [regions] List of source regions being aggregated.
  /// [roleArn] ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.
  ConfigurationAggregatorOrganizationAggregationSource({
    this.allRegions,
    this.regions,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allRegions': ?allRegions,
      'regions': ?regions,
      'roleArn': roleArn,
    };
  }

  factory ConfigurationAggregatorOrganizationAggregationSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigurationAggregatorOrganizationAggregationSource(
      allRegions: map['allRegions'] == null ? null : map['allRegions'] as bool,
      regions: map['regions'] == null
          ? null
          : (map['regions'] as List).cast<String>(),
      roleArn: map['roleArn'] as String,
    );
  }
}
