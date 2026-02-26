// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../capacity_provider_auto_scaling_group_provider/capacity_provider_auto_scaling_group_provider.dart';
import '../capacity_provider_managed_instances_provider/capacity_provider_managed_instances_provider.dart';

/// The set of arguments for CapacityProvider.
class CapacityProviderArgs {
  /// Configuration block for the provider for the ECS auto scaling group. Detailed below. Exactly one of <span pulumi-lang-nodejs="`autoScalingGroupProvider`" pulumi-lang-dotnet="`AutoScalingGroupProvider`" pulumi-lang-go="`autoScalingGroupProvider`" pulumi-lang-python="`auto_scaling_group_provider`" pulumi-lang-yaml="`autoScalingGroupProvider`" pulumi-lang-java="`autoScalingGroupProvider`">`auto_scaling_group_provider`</span> or <span pulumi-lang-nodejs="`managedInstancesProvider`" pulumi-lang-dotnet="`ManagedInstancesProvider`" pulumi-lang-go="`managedInstancesProvider`" pulumi-lang-python="`managed_instances_provider`" pulumi-lang-yaml="`managedInstancesProvider`" pulumi-lang-java="`managedInstancesProvider`">`managed_instances_provider`</span> must be specified.
  final Input<CapacityProviderAutoScalingGroupProvider>?
      autoScalingGroupProvider;

  /// Name of the ECS cluster. Required when using <span pulumi-lang-nodejs="`managedInstancesProvider`" pulumi-lang-dotnet="`ManagedInstancesProvider`" pulumi-lang-go="`managedInstancesProvider`" pulumi-lang-python="`managed_instances_provider`" pulumi-lang-yaml="`managedInstancesProvider`" pulumi-lang-java="`managedInstancesProvider`">`managed_instances_provider`</span>. Must not be set when using <span pulumi-lang-nodejs="`autoScalingGroupProvider`" pulumi-lang-dotnet="`AutoScalingGroupProvider`" pulumi-lang-go="`autoScalingGroupProvider`" pulumi-lang-python="`auto_scaling_group_provider`" pulumi-lang-yaml="`autoScalingGroupProvider`" pulumi-lang-java="`autoScalingGroupProvider`">`auto_scaling_group_provider`</span>.
  final Input<String>? cluster;

  /// Configuration block for the managed instances provider. Detailed below. Exactly one of <span pulumi-lang-nodejs="`autoScalingGroupProvider`" pulumi-lang-dotnet="`AutoScalingGroupProvider`" pulumi-lang-go="`autoScalingGroupProvider`" pulumi-lang-python="`auto_scaling_group_provider`" pulumi-lang-yaml="`autoScalingGroupProvider`" pulumi-lang-java="`autoScalingGroupProvider`">`auto_scaling_group_provider`</span> or <span pulumi-lang-nodejs="`managedInstancesProvider`" pulumi-lang-dotnet="`ManagedInstancesProvider`" pulumi-lang-go="`managedInstancesProvider`" pulumi-lang-python="`managed_instances_provider`" pulumi-lang-yaml="`managedInstancesProvider`" pulumi-lang-java="`managedInstancesProvider`">`managed_instances_provider`</span> must be specified.
  final Input<CapacityProviderManagedInstancesProvider>?
      managedInstancesProvider;

  /// Name of the capacity provider.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  CapacityProviderArgs({
    this.autoScalingGroupProvider,
    this.cluster,
    this.managedInstancesProvider,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoScalingGroupProviderValue = autoScalingGroupProvider;
    if (autoScalingGroupProviderValue != null) {
      map['autoScalingGroupProvider'] = Input.mapOptionalInputValue<
              CapacityProviderAutoScalingGroupProvider, Map<String, dynamic>>(
          autoScalingGroupProviderValue, (value) => value.toMap());
    }
    final clusterValue = cluster;
    if (clusterValue != null) {
      map['cluster'] = clusterValue;
    }
    final managedInstancesProviderValue = managedInstancesProvider;
    if (managedInstancesProviderValue != null) {
      map['managedInstancesProvider'] = Input.mapOptionalInputValue<
              CapacityProviderManagedInstancesProvider, Map<String, dynamic>>(
          managedInstancesProviderValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CapacityProviderArgs.fromMap(Map<String, dynamic> map) {
    return CapacityProviderArgs(
      autoScalingGroupProvider:
          Input.asOptionalInput<CapacityProviderAutoScalingGroupProvider>(
              map['autoScalingGroupProvider']),
      cluster: Input.asOptionalInput<String>(map['cluster']),
      managedInstancesProvider:
          Input.asOptionalInput<CapacityProviderManagedInstancesProvider>(
              map['managedInstancesProvider']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
