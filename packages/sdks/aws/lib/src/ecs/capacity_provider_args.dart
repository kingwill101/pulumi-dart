// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_auto_scaling_group_provider.dart';
import 'capacity_provider_managed_instances_provider.dart';

/// {@template pulumi_ecs_capacity_provider_capacity_provider_args_doc}
/// The set of arguments for CapacityProvider.
/// {@endtemplate}
/// {@macro pulumi_ecs_capacity_provider_capacity_provider_args_doc}
class CapacityProviderArgs {
  /// Configuration block for the provider for the ECS auto scaling group. Detailed below. Exactly one of `auto_scaling_group_provider` or `managed_instances_provider` must be specified.
  final pulumi.Input<CapacityProviderAutoScalingGroupProvider>? autoScalingGroupProvider;
  /// Name of the ECS cluster. Required when using `managed_instances_provider`. Must not be set when using `auto_scaling_group_provider`.
  final pulumi.Input<String>? cluster;
  /// Configuration block for the managed instances provider. Detailed below. Exactly one of `auto_scaling_group_provider` or `managed_instances_provider` must be specified.
  final pulumi.Input<CapacityProviderManagedInstancesProvider>? managedInstancesProvider;
  /// Name of the capacity provider.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CapacityProviderArgs].
  /// [autoScalingGroupProvider] Configuration block for the provider for the ECS auto scaling group. Detailed below. Exactly one of `auto_scaling_group_provider` or `managed_instances_provider` must be specified.
  /// [cluster] Name of the ECS cluster. Required when using `managed_instances_provider`. Must not be set when using `auto_scaling_group_provider`.
  /// [managedInstancesProvider] Configuration block for the managed instances provider. Detailed below. Exactly one of `auto_scaling_group_provider` or `managed_instances_provider` must be specified.
  /// [name] Name of the capacity provider.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CapacityProviderArgs({
    this.autoScalingGroupProvider,
    this.cluster,
    this.managedInstancesProvider,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingGroupProvider': ?pulumi.Input.mapOptionalInputValue<CapacityProviderAutoScalingGroupProvider, Map<String, dynamic>>(autoScalingGroupProvider, (value) => value.toMap()),
      'cluster': ?cluster,
      'managedInstancesProvider': ?pulumi.Input.mapOptionalInputValue<CapacityProviderManagedInstancesProvider, Map<String, dynamic>>(managedInstancesProvider, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory CapacityProviderArgs.fromMap(Map<String, dynamic> map) {
    return CapacityProviderArgs(
      autoScalingGroupProvider: map['autoScalingGroupProvider'] == null ? null : ((CapacityProviderAutoScalingGroupProvider.fromMap((map['autoScalingGroupProvider']! as Map).cast<String, dynamic>())).input()).input(),
      cluster: map['cluster'] == null ? null : ((map['cluster'] as String).input()).input(),
      managedInstancesProvider: map['managedInstancesProvider'] == null ? null : ((CapacityProviderManagedInstancesProvider.fromMap((map['managedInstancesProvider']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

