import 'package:pulumi/pulumi.dart' as pulumi;
import 'finding_aggregator_args.dart';

/// Manages a Security Hub finding aggregator. Security Hub needs to be enabled in a region in order for the aggregator to pull through findings.
///
/// ## Example Usage
///
/// ### All Regions Usage
///
/// The following example will enable the aggregator for every region.
///
///
///
/// ### All Regions Except Specified Regions Usage
///
/// The following example will enable the aggregator for every region except those specified in `specified_regions`.
///
///
///
/// ### Specified Regions Usage
///
/// The following example will enable the aggregator for every region specified in `specified_regions`.
///
///
///
/// ### No Regions Usage
///
/// The following example will enable the aggregator but not link any AWS Regions to the home Region.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an existing Security Hub finding aggregator using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/findingAggregator:FindingAggregator example arn:aws:securityhub:eu-west-1:123456789098:finding-aggregator/abcd1234-abcd-1234-1234-abcdef123456
/// ```
class FindingAggregator extends pulumi.CustomResource {
  /// Indicates whether to aggregate findings from all of the available Regions or from a specified list. The options are `ALL_REGIONS`, `ALL_REGIONS_EXCEPT_SPECIFIED`, `SPECIFIED_REGIONS` or `NO_REGIONS`. When `ALL_REGIONS` or `ALL_REGIONS_EXCEPT_SPECIFIED` are used, Security Hub will automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.
  late final pulumi.Output<String> linkingMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of regions to include or exclude (required if `linking_mode` is set to `ALL_REGIONS_EXCEPT_SPECIFIED` or `SPECIFIED_REGIONS`)
  late final pulumi.Output<List<String>?> specifiedRegions;

  FindingAggregator(
    String name, {
    FindingAggregatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/findingAggregator:FindingAggregator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.linkingMode = registerOutput<String>('linkingMode');
    this.region = registerOutput<String>('region');
    this.specifiedRegions = registerOutput<List<String>?>('specifiedRegions');
  }
}
