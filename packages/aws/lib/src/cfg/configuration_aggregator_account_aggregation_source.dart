// ignore_for_file: unused_element, unnecessary_cast


class ConfigurationAggregatorAccountAggregationSource {
  /// List of 12-digit account IDs of the account(s) being aggregated.
  final List<String> accountIds;
  /// If true, aggregate existing AWS Config regions and future regions.
  final bool? allRegions;
  /// List of source regions being aggregated.
  ///
  /// Either `regions` or `all_regions` (as true) must be specified.
  final List<String>? regions;

  /// Creates a new [ConfigurationAggregatorAccountAggregationSource].
  /// [accountIds] List of 12-digit account IDs of the account(s) being aggregated.
  /// [allRegions] If true, aggregate existing AWS Config regions and future regions.
  /// [regions] List of source regions being aggregated.
  ConfigurationAggregatorAccountAggregationSource({
    required this.accountIds,
    this.allRegions,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIds': accountIds,
      'allRegions': ?allRegions,
      'regions': ?regions,
    };
  }

  factory ConfigurationAggregatorAccountAggregationSource.fromMap(Map<String, dynamic> map) {
    return ConfigurationAggregatorAccountAggregationSource(
      accountIds: (map['accountIds'] as List).cast<String>(),
      allRegions: map['allRegions'] == null ? null : map['allRegions'] as bool,
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
    );
  }
}

