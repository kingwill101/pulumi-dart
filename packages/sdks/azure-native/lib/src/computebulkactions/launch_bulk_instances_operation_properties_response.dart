// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_profile_response.dart';
import 'priority_profile_response.dart';
import 'retry_policy_response.dart';
import 'vm_size_profile_response.dart';
import 'vmattributes_response.dart';
import 'zone_allocation_policy_response.dart';

/// Details of the LaunchBulkInstancesOperation.
class LaunchBulkInstancesOperationPropertiesResponse {
  /// Total capacity to achieve. It can be in terms of VMs or vCPUs.
  final pulumi.Input<int> capacity;
  /// Specifies capacity type for launching instances. It can be in terms of VMs or vCPUs.
  final pulumi.Input<String?>? capacityType;
  /// Compute Profile to configure the Virtual Machines.
  final pulumi.Input<ComputeProfileResponse> computeProfile;
  /// Configuration Options for Regular or Spot instances in LaunchBulkInstancesOperation.
  final pulumi.Input<PriorityProfileResponse> priorityProfile;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Retry policy the user can pass
  final pulumi.Input<RetryPolicyResponse?>? retryPolicy;
  /// Attributes to launch instances.
  final pulumi.Input<VMAttributesResponse?>? vmAttributes;
  /// List of VM sizes supported for LaunchBulkInstancesOperation
  final pulumi.Input<List<VmSizeProfileResponse>?>? vmSizesProfile;
  /// Zone Allocation Policy for launching instances.
  final pulumi.Input<ZoneAllocationPolicyResponse?>? zoneAllocationPolicy;

  /// Creates a new [LaunchBulkInstancesOperationPropertiesResponse].
  /// [capacity] Total capacity to achieve. It can be in terms of VMs or vCPUs.
  /// [capacityType] Specifies capacity type for launching instances. It can be in terms of VMs or vCPUs.
  /// [computeProfile] Compute Profile to configure the Virtual Machines.
  /// [priorityProfile] Configuration Options for Regular or Spot instances in LaunchBulkInstancesOperation.
  /// [provisioningState] The status of the last operation.
  /// [retryPolicy] Retry policy the user can pass
  /// [vmAttributes] Attributes to launch instances.
  /// [vmSizesProfile] List of VM sizes supported for LaunchBulkInstancesOperation
  /// [zoneAllocationPolicy] Zone Allocation Policy for launching instances.
  const LaunchBulkInstancesOperationPropertiesResponse({
    required this.capacity,
    this.capacityType,
    required this.computeProfile,
    required this.priorityProfile,
    required this.provisioningState,
    this.retryPolicy,
    this.vmAttributes,
    this.vmSizesProfile,
    this.zoneAllocationPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'capacityType': ?capacityType,
      'computeProfile': pulumi.Input.mapInputValue<ComputeProfileResponse, Map<String, dynamic>>(computeProfile, (value) => value.toMap()),
      'priorityProfile': pulumi.Input.mapInputValue<PriorityProfileResponse, Map<String, dynamic>>(priorityProfile, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicyResponse, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'vmAttributes': ?pulumi.Input.mapOptionalInputValue<VMAttributesResponse, Map<String, dynamic>>(vmAttributes, (value) => value.toMap()),
      'vmSizesProfile': ?pulumi.Input.mapOptionalInputValue<List<VmSizeProfileResponse>, List<Map<String, dynamic>>>(vmSizesProfile, (value) => pulumi.Input.encodeList<VmSizeProfileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneAllocationPolicy': ?pulumi.Input.mapOptionalInputValue<ZoneAllocationPolicyResponse, Map<String, dynamic>>(zoneAllocationPolicy, (value) => value.toMap()),
    };
  }

  factory LaunchBulkInstancesOperationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LaunchBulkInstancesOperationPropertiesResponse(
      capacity: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['capacity'])),
      capacityType: (() { final guardedValue = map['capacityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeProfile: pulumi.Input.fromValue(ComputeProfileResponse.fromMap((map['computeProfile']! as Map).cast<String, dynamic>())),
      priorityProfile: pulumi.Input.fromValue(PriorityProfileResponse.fromMap((map['priorityProfile']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetryPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmAttributes: (() { final guardedValue = map['vmAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMAttributesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmSizesProfile: (() { final guardedValue = map['vmSizesProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VmSizeProfileResponse>(guardedValue, (value) => VmSizeProfileResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneAllocationPolicy: (() { final guardedValue = map['zoneAllocationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneAllocationPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
