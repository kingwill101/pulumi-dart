// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for FindingAggregator.
class FindingAggregatorArgs {
  /// Indicates whether to aggregate findings from all of the available Regions or from a specified list. The options are `ALL_REGIONS`, `ALL_REGIONS_EXCEPT_SPECIFIED`, `SPECIFIED_REGIONS` or `NO_REGIONS`. When `ALL_REGIONS` or `ALL_REGIONS_EXCEPT_SPECIFIED` are used, Security Hub will automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.
  final Input<String> linkingMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of regions to include or exclude (required if `linking_mode` is set to `ALL_REGIONS_EXCEPT_SPECIFIED` or `SPECIFIED_REGIONS`)
  final Input<List<String>>? specifiedRegions;

  FindingAggregatorArgs({
    required this.linkingMode,
    this.region,
    this.specifiedRegions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['linkingMode'] = linkingMode;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final specifiedRegionsValue = specifiedRegions;
    if (specifiedRegionsValue != null) {
      map['specifiedRegions'] = specifiedRegionsValue;
    }
    return map;
  }

  factory FindingAggregatorArgs.fromMap(Map<String, dynamic> map) {
    return FindingAggregatorArgs(
      linkingMode: Input.asInput<String>(map['linkingMode']),
      region: Input.asOptionalInput<String>(map['region']),
      specifiedRegions:
          Input.asOptionalInput<List<String>>(map['specifiedRegions']),
    );
  }
}
