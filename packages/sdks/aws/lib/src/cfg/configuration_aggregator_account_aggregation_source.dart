// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationAggregatorAccountAggregationSource {
  /// List of 12-digit account IDs of the account(s) being aggregated.
  final pulumi.Input<List<String>> accountIds;
  /// If true, aggregate existing AWS Config regions and future regions.
  final pulumi.Input<bool>? allRegions;
  /// List of source regions being aggregated.
  ///
  /// Either `regions` or `all_regions` (as true) must be specified.
  final pulumi.Input<List<String>>? regions;

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
      accountIds: pulumi.Input.fromValue((map['accountIds'] as List).cast<String>()),
      allRegions: (() { final guardedValue = map['allRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

