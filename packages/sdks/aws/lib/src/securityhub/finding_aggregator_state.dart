// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FindingAggregator resources.
class FindingAggregatorState {
  /// Indicates whether to aggregate findings from all of the available Regions or from a specified list. The options are `ALL_REGIONS`, `ALL_REGIONS_EXCEPT_SPECIFIED`, `SPECIFIED_REGIONS` or `NO_REGIONS`. When `ALL_REGIONS` or `ALL_REGIONS_EXCEPT_SPECIFIED` are used, Security Hub will automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.
  final pulumi.Input<String>? linkingMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of regions to include or exclude (required if `linking_mode` is set to `ALL_REGIONS_EXCEPT_SPECIFIED` or `SPECIFIED_REGIONS`)
  final pulumi.Input<List<String>>? specifiedRegions;

  /// Creates a new [FindingAggregatorState].
  /// [linkingMode] Indicates whether to aggregate findings from all of the available Regions or from a specified list. The options are `ALL_REGIONS`, `ALL_REGIONS_EXCEPT_SPECIFIED`, `SPECIFIED_REGIONS` or `NO_REGIONS`. When `ALL_REGIONS` or `ALL_REGIONS_EXCEPT_SPECIFIED` are used, Security Hub will automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [specifiedRegions] List of regions to include or exclude (required if `linking_mode` is set to `ALL_REGIONS_EXCEPT_SPECIFIED` or `SPECIFIED_REGIONS`)
  FindingAggregatorState({
    this.linkingMode,
    this.region,
    this.specifiedRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkingMode': ?linkingMode,
      'region': ?region,
      'specifiedRegions': ?specifiedRegions,
    };
  }

  factory FindingAggregatorState.fromMap(Map<String, dynamic> map) {
    return FindingAggregatorState(
      linkingMode: map['linkingMode'] == null ? null : (map['linkingMode'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      specifiedRegions: map['specifiedRegions'] == null ? null : ((map['specifiedRegions'] as List).cast<String>()).input(),
    );
  }
}

