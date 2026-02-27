import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_scaling_group_args.dart';

/// Resource for managing an AWS FinSpace Kx Scaling Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Scaling Group using the `id` (environment ID and scaling group name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxScalingGroup:KxScalingGroup example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-scalinggroup
/// ```
class KxScalingGroup extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX Scaling Group.
  late final pulumi.Output<String> arn;

  /// The availability zone identifiers for the requested regions.
  late final pulumi.Output<String> availabilityZoneId;

  /// The list of Managed kdb clusters that are currently active in the given scaling group.
  late final pulumi.Output<List<String>> clusters;

  /// The timestamp at which the scaling group was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  late final pulumi.Output<String> createdTimestamp;

  /// A unique identifier for the kdb environment, where you want to create the scaling group.
  late final pulumi.Output<String> environmentId;

  /// The memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> hostType;

  /// Last timestamp at which the scaling group was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> lastModifiedTimestamp;

  /// Unique name for the scaling group that you want to create.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The status of scaling group.
  /// * `CREATING` - The scaling group creation is in progress.
  /// * `CREATE_FAILED` - The scaling group creation has failed.
  /// * `ACTIVE` - The scaling group is active.
  /// * `UPDATING` - The scaling group is in the process of being updated.
  /// * `UPDATE_FAILED` - The update action failed.
  /// * `DELETING` - The scaling group is in the process of being deleted.
  /// * `DELETE_FAILED` - The system failed to delete the scaling group.
  /// * `DELETED` - The scaling group is successfully deleted.
  late final pulumi.Output<String> status;

  /// The error message when a failed state occurs.
  late final pulumi.Output<String> statusReason;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. You can add up to 50 tags to a scaling group.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  KxScalingGroup(
    String name, {
    KxScalingGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxScalingGroup:KxScalingGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZoneId = registerOutput<String>('availabilityZoneId');
    this.clusters = registerOutput<List<String>>('clusters');
    this.createdTimestamp = registerOutput<String>('createdTimestamp');
    this.environmentId = registerOutput<String>('environmentId');
    this.hostType = registerOutput<String>('hostType');
    this.lastModifiedTimestamp =
        registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
