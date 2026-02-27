import 'package:pulumi/pulumi.dart';
import 'placement_group_args.dart';

/// Provides an EC2 placement group. Read more about placement groups
/// in [AWS Docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import placement groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/placementGroup:PlacementGroup prod_pg production-placement-group
/// ```
class PlacementGroup extends CustomResource {
  /// Amazon Resource Name (ARN) of the placement group.
  late final Output<String> arn;

  /// The name of the placement group.
  late final Output<String> name;

  /// The number of partitions to create in the
  /// placement group.  Can only be specified when the `strategy` is set to
  /// `partition`.  Must be at least `1`. (default is `2`).
  late final Output<int> partitionCount;

  /// The ID of the placement group.
  late final Output<String> placementGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Determines how placement groups spread instances. Can only be used
  /// when the `strategy` is set to `spread`. Can be `host` or `rack`. `host` can only be used for Outpost placement groups. Defaults to `rack`.
  late final Output<String> spreadLevel;

  /// The placement strategy. Can be `cluster`, `partition` or `spread`.
  late final Output<String> strategy;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  PlacementGroup(
    String name, {
    PlacementGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/placementGroup:PlacementGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.partitionCount = registerOutput<int>('partitionCount');
    this.placementGroupId = registerOutput<String>('placementGroupId');
    this.region = registerOutput<String>('region');
    this.spreadLevel = registerOutput<String>('spreadLevel');
    this.strategy = registerOutput<String>('strategy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
