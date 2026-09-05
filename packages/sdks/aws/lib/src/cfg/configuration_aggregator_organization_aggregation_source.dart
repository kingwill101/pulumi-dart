// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationAggregatorOrganizationAggregationSource {
  /// If true, aggregate existing AWS Config regions and future regions.
  final pulumi.Input<bool?>? allRegions;
  /// List of source regions being aggregated.
  final pulumi.Input<List<String>?>? regions;
  /// ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.
  ///
  /// Either `regions` or `allRegions` (as true) must be specified.
  final pulumi.Input<String> roleArn;

  /// Creates a new [ConfigurationAggregatorOrganizationAggregationSource].
  /// [allRegions] If true, aggregate existing AWS Config regions and future regions.
  /// [regions] List of source regions being aggregated.
  /// [roleArn] ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.
  const ConfigurationAggregatorOrganizationAggregationSource({
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

  factory ConfigurationAggregatorOrganizationAggregationSource.fromMap(Map<String, dynamic> map) {
    return ConfigurationAggregatorOrganizationAggregationSource(
      allRegions: (() { final guardedValue = map['allRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
