// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_profile.dart';
import 'priority_profile.dart';
import 'retry_policy.dart';
import 'vm_size_profile.dart';
import 'vmattributes.dart';
import 'zone_allocation_policy.dart';

/// Details of the LaunchBulkInstancesOperation.
class LaunchBulkInstancesOperationProperties {
  /// Total capacity to achieve. It can be in terms of VMs or vCPUs.
  final pulumi.Input<int> capacity;
  /// Specifies capacity type for launching instances. It can be in terms of VMs or vCPUs.
  final pulumi.Input<dynamic>? capacityType;
  /// Compute Profile to configure the Virtual Machines.
  final pulumi.Input<ComputeProfile> computeProfile;
  /// Configuration Options for Regular or Spot instances in LaunchBulkInstancesOperation.
  final pulumi.Input<PriorityProfile> priorityProfile;
  /// Retry policy the user can pass
  final pulumi.Input<RetryPolicy?>? retryPolicy;
  /// Attributes to launch instances.
  final pulumi.Input<VMAttributes?>? vmAttributes;
  /// List of VM sizes supported for LaunchBulkInstancesOperation
  final pulumi.Input<List<VmSizeProfile>?>? vmSizesProfile;
  /// Zone Allocation Policy for launching instances.
  final pulumi.Input<ZoneAllocationPolicy?>? zoneAllocationPolicy;

  /// Creates a new [LaunchBulkInstancesOperationProperties].
  /// [capacity] Total capacity to achieve. It can be in terms of VMs or vCPUs.
  /// [capacityType] Specifies capacity type for launching instances. It can be in terms of VMs or vCPUs.
  /// [computeProfile] Compute Profile to configure the Virtual Machines.
  /// [priorityProfile] Configuration Options for Regular or Spot instances in LaunchBulkInstancesOperation.
  /// [retryPolicy] Retry policy the user can pass
  /// [vmAttributes] Attributes to launch instances.
  /// [vmSizesProfile] List of VM sizes supported for LaunchBulkInstancesOperation
  /// [zoneAllocationPolicy] Zone Allocation Policy for launching instances.
  const LaunchBulkInstancesOperationProperties({
    required this.capacity,
    this.capacityType,
    required this.computeProfile,
    required this.priorityProfile,
    this.retryPolicy,
    this.vmAttributes,
    this.vmSizesProfile,
    this.zoneAllocationPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'capacityType': ?capacityType,
      'computeProfile': pulumi.Input.mapInputValue<ComputeProfile, Map<String, dynamic>>(computeProfile, (value) => value.toMap()),
      'priorityProfile': pulumi.Input.mapInputValue<PriorityProfile, Map<String, dynamic>>(priorityProfile, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'vmAttributes': ?pulumi.Input.mapOptionalInputValue<VMAttributes, Map<String, dynamic>>(vmAttributes, (value) => value.toMap()),
      'vmSizesProfile': ?pulumi.Input.mapOptionalInputValue<List<VmSizeProfile>, List<Map<String, dynamic>>>(vmSizesProfile, (value) => pulumi.Input.encodeList<VmSizeProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneAllocationPolicy': ?pulumi.Input.mapOptionalInputValue<ZoneAllocationPolicy, Map<String, dynamic>>(zoneAllocationPolicy, (value) => value.toMap()),
    };
  }

  factory LaunchBulkInstancesOperationProperties.fromMap(Map<String, dynamic> map) {
    return LaunchBulkInstancesOperationProperties(
      capacity: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['capacity'])),
      capacityType: (() { final guardedValue = map['capacityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      computeProfile: pulumi.Input.fromValue(ComputeProfile.fromMap((map['computeProfile']! as Map).cast<String, dynamic>())),
      priorityProfile: pulumi.Input.fromValue(PriorityProfile.fromMap((map['priorityProfile']! as Map).cast<String, dynamic>())),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmAttributes: (() { final guardedValue = map['vmAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmSizesProfile: (() { final guardedValue = map['vmSizesProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VmSizeProfile>(guardedValue, (value) => VmSizeProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneAllocationPolicy: (() { final guardedValue = map['zoneAllocationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneAllocationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
