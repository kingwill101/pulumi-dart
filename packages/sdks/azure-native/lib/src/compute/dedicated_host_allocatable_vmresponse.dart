// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the dedicated host unutilized capacity in terms of a specific VM size.
class DedicatedHostAllocatableVMResponse {
  /// Maximum number of VMs of size vmSize that can fit in the dedicated host's remaining capacity.
  final pulumi.Input<double>? count;
  /// VM size in terms of which the unutilized capacity is represented.
  final pulumi.Input<String>? vmSize;

  /// Creates a new [DedicatedHostAllocatableVMResponse].
  /// [count] Maximum number of VMs of size vmSize that can fit in the dedicated host's remaining capacity.
  /// [vmSize] VM size in terms of which the unutilized capacity is represented.
  const DedicatedHostAllocatableVMResponse({
    this.count,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'vmSize': ?vmSize,
    };
  }

  factory DedicatedHostAllocatableVMResponse.fromMap(Map<String, dynamic> map) {
    return DedicatedHostAllocatableVMResponse(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
