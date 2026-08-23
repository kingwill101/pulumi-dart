// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains properties that are applicable to both Spot and Regular.
class PriorityProfile {
  /// Allocation strategy to follow when determining the VM sizes distribution.
  final pulumi.Input<String>? allocationStrategy;
  /// Eviction Policy to follow when evicting Spot VMs.
  final pulumi.Input<String>? evictionPolicy;
  /// Price per hour of each Spot VM will never exceed this.
  final pulumi.Input<double>? maxPricePerVM;
  /// Specifies the type of Virtual Machine.
  final pulumi.Input<String>? type;

  /// Creates a new [PriorityProfile].
  /// [allocationStrategy] Allocation strategy to follow when determining the VM sizes distribution.
  /// [evictionPolicy] Eviction Policy to follow when evicting Spot VMs.
  /// [maxPricePerVM] Price per hour of each Spot VM will never exceed this.
  /// [type] Specifies the type of Virtual Machine.
  const PriorityProfile({
    this.allocationStrategy,
    this.evictionPolicy,
    this.maxPricePerVM,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': ?allocationStrategy,
      'evictionPolicy': ?evictionPolicy,
      'maxPricePerVM': ?maxPricePerVM,
      'type': ?type,
    };
  }

  factory PriorityProfile.fromMap(Map<String, dynamic> map) {
    return PriorityProfile(
      allocationStrategy: (() { final guardedValue = map['allocationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxPricePerVM: (() { final guardedValue = map['maxPricePerVM']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
