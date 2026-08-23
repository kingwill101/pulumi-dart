// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration Options for Spot instances in Compute Fleet.
class SpotPriorityProfile {
  /// Allocation strategy to follow when determining the VM sizes distribution for Spot VMs.
  final pulumi.Input<String>? allocationStrategy;
  /// Total capacity to achieve. It is currently in terms of number of VMs.
  final pulumi.Input<int>? capacity;
  /// Eviction Policy to follow when evicting Spot VMs.
  final pulumi.Input<String>? evictionPolicy;
  /// Flag to enable/disable continuous goal seeking for the desired capacity and restoration of evicted Spot VMs.
  /// If maintain is enabled, AzureFleetRP will use all VM sizes in vmSizesProfile to create new VMs (if VMs are evicted deleted)
  /// or update existing VMs with new VM sizes (if VMs are evicted deallocated or failed to allocate due to capacity constraint) in order to achieve the desired capacity.
  /// Maintain is enabled by default.
  final pulumi.Input<bool>? maintain;
  /// Price per hour of each Spot VM will never exceed this.
  final pulumi.Input<double>? maxPricePerVM;
  /// Minimum capacity to achieve which cannot be updated. If we will not be able to "guarantee" minimum capacity, we will reject the request in the sync path itself.
  final pulumi.Input<int>? minCapacity;

  /// Creates a new [SpotPriorityProfile].
  /// [allocationStrategy] Allocation strategy to follow when determining the VM sizes distribution for Spot VMs.
  /// [capacity] Total capacity to achieve. It is currently in terms of number of VMs.
  /// [evictionPolicy] Eviction Policy to follow when evicting Spot VMs.
  /// [maintain] Flag to enable/disable continuous goal seeking for the desired capacity and restoration of evicted Spot VMs.
  /// [maxPricePerVM] Price per hour of each Spot VM will never exceed this.
  /// [minCapacity] Minimum capacity to achieve which cannot be updated. If we will not be able to "guarantee" minimum capacity, we will reject the request in the sync path itself.
  const SpotPriorityProfile({
    this.allocationStrategy,
    this.capacity,
    this.evictionPolicy,
    this.maintain,
    this.maxPricePerVM,
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': ?allocationStrategy,
      'capacity': ?capacity,
      'evictionPolicy': ?evictionPolicy,
      'maintain': ?maintain,
      'maxPricePerVM': ?maxPricePerVM,
      'minCapacity': ?minCapacity,
    };
  }

  factory SpotPriorityProfile.fromMap(Map<String, dynamic> map) {
    return SpotPriorityProfile(
      allocationStrategy: (() { final guardedValue = map['allocationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintain: (() { final guardedValue = map['maintain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxPricePerVM: (() { final guardedValue = map['maxPricePerVM']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minCapacity: (() { final guardedValue = map['minCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
