// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_finding_aggregator_finding_aggregator_args_doc}
/// The set of arguments for FindingAggregator.
/// {@endtemplate}
/// {@macro pulumi_securityhub_finding_aggregator_finding_aggregator_args_doc}
class FindingAggregatorArgs {
  /// Indicates whether to aggregate findings from all of the available Regions or from a specified list. The options are `ALL_REGIONS`, `ALL_REGIONS_EXCEPT_SPECIFIED`, `SPECIFIED_REGIONS` or `NO_REGIONS`. When `ALL_REGIONS` or `ALL_REGIONS_EXCEPT_SPECIFIED` are used, Security Hub will automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.
  final pulumi.Input<String> linkingMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of regions to include or exclude (required if `linking_mode` is set to `ALL_REGIONS_EXCEPT_SPECIFIED` or `SPECIFIED_REGIONS`)
  final pulumi.Input<List<String>>? specifiedRegions;

  /// Creates a new [FindingAggregatorArgs].
  /// [linkingMode] Indicates whether to aggregate findings from all of the available Regions or from a specified list. The options are `ALL_REGIONS`, `ALL_REGIONS_EXCEPT_SPECIFIED`, `SPECIFIED_REGIONS` or `NO_REGIONS`. When `ALL_REGIONS` or `ALL_REGIONS_EXCEPT_SPECIFIED` are used, Security Hub will automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [specifiedRegions] List of regions to include or exclude (required if `linking_mode` is set to `ALL_REGIONS_EXCEPT_SPECIFIED` or `SPECIFIED_REGIONS`)
  FindingAggregatorArgs({
    required pulumi.Output<String> linkingMode,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? specifiedRegions,
  }) :
      linkingMode = pulumi.Input.asInput<String>(linkingMode),
      region = pulumi.Input.asOptionalInput<String>(region),
      specifiedRegions = pulumi.Input.asOptionalInput<List<String>>(specifiedRegions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkingMode': linkingMode,
      'region': ?region,
      'specifiedRegions': ?specifiedRegions,
    };
  }

  factory FindingAggregatorArgs.fromMap(Map<String, dynamic> map) {
    return FindingAggregatorArgs(
      linkingMode: pulumi.Output.create<String>(map['linkingMode'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      specifiedRegions: map['specifiedRegions'] == null ? null : pulumi.Output.create<List<String>>((map['specifiedRegions'] as List).cast<String>()),
    );
  }
}

