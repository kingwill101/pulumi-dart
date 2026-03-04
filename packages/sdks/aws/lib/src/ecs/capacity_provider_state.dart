// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_auto_scaling_group_provider.dart';
import 'capacity_provider_managed_instances_provider.dart';

/// Input properties used for looking up and filtering CapacityProvider resources.
class CapacityProviderState {
  /// ARN that identifies the capacity provider.
  final pulumi.Input<String>? arn;

  /// Configuration block for the provider for the ECS auto scaling group. Detailed below. Exactly one of `auto_scaling_group_provider` or `managed_instances_provider` must be specified.
  final pulumi.Input<CapacityProviderAutoScalingGroupProvider>?
  autoScalingGroupProvider;

  /// Name of the ECS cluster. Required when using `managed_instances_provider`. Must not be set when using `auto_scaling_group_provider`.
  final pulumi.Input<String>? cluster;

  /// Configuration block for the managed instances provider. Detailed below. Exactly one of `auto_scaling_group_provider` or `managed_instances_provider` must be specified.
  final pulumi.Input<CapacityProviderManagedInstancesProvider>?
  managedInstancesProvider;

  /// Name of the capacity provider.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CapacityProviderState].
  /// [arn] ARN that identifies the capacity provider.
  /// [autoScalingGroupProvider] Configuration block for the provider for the ECS auto scaling group. Detailed below. Exactly one of `auto_scaling_group_provider` or `managed_instances_provider` must be specified.
  /// [cluster] Name of the ECS cluster. Required when using `managed_instances_provider`. Must not be set when using `auto_scaling_group_provider`.
  /// [managedInstancesProvider] Configuration block for the managed instances provider. Detailed below. Exactly one of `auto_scaling_group_provider` or `managed_instances_provider` must be specified.
  /// [name] Name of the capacity provider.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CapacityProviderState({
    this.arn,
    this.autoScalingGroupProvider,
    this.cluster,
    this.managedInstancesProvider,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoScalingGroupProvider':
          ?pulumi.Input.mapOptionalInputValue<
            CapacityProviderAutoScalingGroupProvider,
            Map<String, dynamic>
          >(autoScalingGroupProvider, (value) => value.toMap()),
      'cluster': ?cluster,
      'managedInstancesProvider':
          ?pulumi.Input.mapOptionalInputValue<
            CapacityProviderManagedInstancesProvider,
            Map<String, dynamic>
          >(managedInstancesProvider, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CapacityProviderState.fromMap(Map<String, dynamic> map) {
    return CapacityProviderState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoScalingGroupProvider: (() {
        final guardedValue = map['autoScalingGroupProvider'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CapacityProviderAutoScalingGroupProvider.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cluster: (() {
        final guardedValue = map['cluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedInstancesProvider: (() {
        final guardedValue = map['managedInstancesProvider'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CapacityProviderManagedInstancesProvider.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
