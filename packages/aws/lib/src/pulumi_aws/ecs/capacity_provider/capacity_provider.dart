import 'package:pulumi/pulumi.dart' as pulumi;
import '../capacity_provider_auto_scaling_group_provider/capacity_provider_auto_scaling_group_provider.dart';
import '../capacity_provider_managed_instances_provider/capacity_provider_managed_instances_provider.dart';
import 'capacity_provider_args.dart';

/// Provides an ECS cluster capacity provider. More information can be found on the [ECS Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-capacity-providers.html).
///
/// > **NOTE:** Associating an ECS Capacity Provider to an Auto Scaling Group will automatically add the `AmazonECSManaged` tag to the Auto Scaling Group. This tag should be included in the `aws.autoscaling.Group` resource configuration to prevent the provider from removing it in subsequent executions as well as ensuring the `AmazonECSManaged` tag is propagated to all EC2 Instances in the Auto Scaling Group if `min_size` is above 0 on creation. Any EC2 Instances in the Auto Scaling Group without this tag must be manually be updated, otherwise they may cause unexpected scaling behavior and metrics.
///
/// > **NOTE:** You must specify exactly one of `auto_scaling_group_provider` or `managed_instances_provider`. When using `managed_instances_provider`, the `cluster` parameter is required. When using `auto_scaling_group_provider`, the `cluster` parameter must not be set.
///
/// ## Example Usage
///
/// ### Auto Scaling Group Provider
///
///
///
/// ### Managed Instances Provider
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the ECS capacity provider.
///
///
/// Using `pulumi import`, import ECS Capacity Providers using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/capacityProvider:CapacityProvider example arn:aws:ecs:us-west-2:123456789012:capacity-provider/example
/// ```
class CapacityProvider extends pulumi.CustomResource {
  /// ARN that identifies the capacity provider.
  late final pulumi.Output<String> arn;

  /// Configuration block for the provider for the ECS auto scaling group. Detailed below. Exactly one of `auto_scaling_group_provider` or `managed_instances_provider` must be specified.
  late final pulumi.Output<CapacityProviderAutoScalingGroupProvider?>
      autoScalingGroupProvider;

  /// Name of the ECS cluster. Required when using `managed_instances_provider`. Must not be set when using `auto_scaling_group_provider`.
  late final pulumi.Output<String?> cluster;

  /// Configuration block for the managed instances provider. Detailed below. Exactly one of `auto_scaling_group_provider` or `managed_instances_provider` must be specified.
  late final pulumi.Output<CapacityProviderManagedInstancesProvider?>
      managedInstancesProvider;

  /// Name of the capacity provider.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  CapacityProvider(
    String name, {
    CapacityProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/capacityProvider:CapacityProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoScalingGroupProvider =
        registerOutput<CapacityProviderAutoScalingGroupProvider?>(
            'autoScalingGroupProvider');
    this.cluster = registerOutput<String?>('cluster');
    this.managedInstancesProvider =
        registerOutput<CapacityProviderManagedInstancesProvider?>(
            'managedInstancesProvider');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
