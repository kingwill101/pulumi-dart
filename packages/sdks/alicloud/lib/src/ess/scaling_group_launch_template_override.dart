// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingGroupLaunchTemplateOverride {
  /// The instance type in launchTemplateOverride.
  final pulumi.Input<String>? instanceType;
  /// The maximum bid price of instance type in launchTemplateOverride.
  ///
  ///
  /// &gt; **NOTE:** When detach loadbalancers, instances in group will be remove from loadbalancer's `Default Server Group`; On the contrary, When attach loadbalancers, instances in group will be added to loadbalancer's `Default Server Group`.
  ///
  /// &gt; **NOTE:** When detach dbInstances, private ip of instances in group will be remove from dbInstance's `WhiteList`; On the contrary, When attach dbInstances, private ip of instances in group will be added to dbInstance's `WhiteList`.
  ///
  /// &gt; **NOTE:** `on_demand_base_capacity`,`on_demand_percentage_above_base_capacity`,`spot_instance_pools`,`spot_instance_remedy` are valid only if `multi_az_policy` is 'COST_OPTIMIZED'.
  final pulumi.Input<double>? spotPriceLimit;
  /// The weight of the instance type in launchTemplateOverride.
  final pulumi.Input<int>? weightedCapacity;

  /// Creates a new [ScalingGroupLaunchTemplateOverride].
  /// [instanceType] The instance type in launchTemplateOverride.
  /// [spotPriceLimit] The maximum bid price of instance type in launchTemplateOverride.
  /// [weightedCapacity] The weight of the instance type in launchTemplateOverride.
  ScalingGroupLaunchTemplateOverride({
    this.instanceType,
    this.spotPriceLimit,
    this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'spotPriceLimit': ?spotPriceLimit,
      'weightedCapacity': ?weightedCapacity,
    };
  }

  factory ScalingGroupLaunchTemplateOverride.fromMap(Map<String, dynamic> map) {
    return ScalingGroupLaunchTemplateOverride(
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotPriceLimit: (() { final guardedValue = map['spotPriceLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      weightedCapacity: (() { final guardedValue = map['weightedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

