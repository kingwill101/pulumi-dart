// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_capacity_block_reservation_commitment_info.dart';
import 'get_capacity_block_reservation_filter.dart';
import 'get_capacity_block_reservation_interruptible_capacity_allocation.dart';
import 'get_capacity_block_reservation_interruption_info.dart';

/// Result data returned by getCapacityBlockReservation.
class GetCapacityBlockReservationResult {
  /// ARN of the Capacity Block reservation.
  final String arn;
  /// Availability Zone in which the capacity is reserved.
  final String availabilityZone;
  /// ID of the Availability Zone in which the capacity is reserved.
  final String availabilityZoneId;
  /// Remaining capacity, indicating the number of instances that can still be launched into the Capacity Block reservation.
  final int availableInstanceCount;
  /// ID of the underlying Capacity Block.
  final String capacityBlockId;
  /// Information about your commitment for a future-dated Capacity Block reservation. See `commitmentInfo` Attribute Reference below.
  final GetCapacityBlockReservationCommitmentInfo commitmentInfo;
  /// Date and time the Capacity Block reservation was created in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String createdDate;
  /// Delivery method for a future-dated Capacity Block reservation. Either `fixed` or `incremental`.
  final String deliveryPreference;
  /// Whether the Capacity Block reservation supports EBS-optimized instances.
  final bool ebsOptimized;
  /// Date and time the Capacity Block reservation expires in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String endDate;
  /// End type of the Capacity Block reservation. Either `limited` or `unlimited`.
  final String endDateType;
  final List<GetCapacityBlockReservationFilter>? filters;
  final String id;
  /// Number of instances allocated as interruptible capacity within the Capacity Block reservation.
  final int instanceCount;
  /// Type of instance launches that the Capacity Block accepts. Either `open` or `targeted`.
  final String instanceMatchCriteria;
  /// Operating system platform for which the Capacity Block reserves capacity.
  final String instancePlatform;
  /// Instance type for which the Capacity Block reserves capacity.
  final String instanceType;
  /// Information about the interruptible capacity allocation, if applicable. See `interruptibleCapacityAllocation` Attribute Reference below.
  final GetCapacityBlockReservationInterruptibleCapacityAllocation interruptibleCapacityAllocation;
  /// Information about an interrupted Capacity Block reservation, if applicable. See `interruptionInfo` Attribute Reference below.
  final GetCapacityBlockReservationInterruptionInfo interruptionInfo;
  /// ARN of the Outpost on which the Capacity Block was created, if applicable.
  final String outpostArn;
  /// ID of the AWS account that owns the Capacity Block reservation.
  final String ownerId;
  /// ARN of the cluster placement group in which the Capacity Block was created, if applicable.
  final String placementGroupArn;
  final String region;
  /// Type of Capacity Reservation. Always `capacity-block` for this data source.
  final String reservationType;
  /// Date and time the Capacity Block reservation was started in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String startDate;
  /// Current state of the Capacity Block reservation. One of `active`, `expired`, `cancelled`, `pending`, `failed`, `scheduled`, `payment-pending`, `payment-failed`, or `assessing`.
  final String state;
  /// Map of tags assigned to the Capacity Block reservation.
  final Map<String, String> tags;
  /// Tenancy of the Capacity Block. Either `default` or `dedicated`.
  final String tenancy;

  /// Creates a new [GetCapacityBlockReservationResult].
  /// [arn] ARN of the Capacity Block reservation.
  /// [availabilityZone] Availability Zone in which the capacity is reserved.
  /// [availabilityZoneId] ID of the Availability Zone in which the capacity is reserved.
  /// [availableInstanceCount] Remaining capacity, indicating the number of instances that can still be launched into the Capacity Block reservation.
  /// [capacityBlockId] ID of the underlying Capacity Block.
  /// [commitmentInfo] Information about your commitment for a future-dated Capacity Block reservation. See `commitmentInfo` Attribute Reference below.
  /// [createdDate] Date and time the Capacity Block reservation was created in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [deliveryPreference] Delivery method for a future-dated Capacity Block reservation. Either `fixed` or `incremental`.
  /// [ebsOptimized] Whether the Capacity Block reservation supports EBS-optimized instances.
  /// [endDate] Date and time the Capacity Block reservation expires in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [endDateType] End type of the Capacity Block reservation. Either `limited` or `unlimited`.
  /// [filters] Optional.
  /// [id] Required.
  /// [instanceCount] Number of instances allocated as interruptible capacity within the Capacity Block reservation.
  /// [instanceMatchCriteria] Type of instance launches that the Capacity Block accepts. Either `open` or `targeted`.
  /// [instancePlatform] Operating system platform for which the Capacity Block reserves capacity.
  /// [instanceType] Instance type for which the Capacity Block reserves capacity.
  /// [interruptibleCapacityAllocation] Information about the interruptible capacity allocation, if applicable. See `interruptibleCapacityAllocation` Attribute Reference below.
  /// [interruptionInfo] Information about an interrupted Capacity Block reservation, if applicable. See `interruptionInfo` Attribute Reference below.
  /// [outpostArn] ARN of the Outpost on which the Capacity Block was created, if applicable.
  /// [ownerId] ID of the AWS account that owns the Capacity Block reservation.
  /// [placementGroupArn] ARN of the cluster placement group in which the Capacity Block was created, if applicable.
  /// [region] Required.
  /// [reservationType] Type of Capacity Reservation. Always `capacity-block` for this data source.
  /// [startDate] Date and time the Capacity Block reservation was started in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [state] Current state of the Capacity Block reservation. One of `active`, `expired`, `cancelled`, `pending`, `failed`, `scheduled`, `payment-pending`, `payment-failed`, or `assessing`.
  /// [tags] Map of tags assigned to the Capacity Block reservation.
  /// [tenancy] Tenancy of the Capacity Block. Either `default` or `dedicated`.
  const GetCapacityBlockReservationResult({
    required this.arn,
    required this.availabilityZone,
    required this.availabilityZoneId,
    required this.availableInstanceCount,
    required this.capacityBlockId,
    required this.commitmentInfo,
    required this.createdDate,
    required this.deliveryPreference,
    required this.ebsOptimized,
    required this.endDate,
    required this.endDateType,
    this.filters,
    required this.id,
    required this.instanceCount,
    required this.instanceMatchCriteria,
    required this.instancePlatform,
    required this.instanceType,
    required this.interruptibleCapacityAllocation,
    required this.interruptionInfo,
    required this.outpostArn,
    required this.ownerId,
    required this.placementGroupArn,
    required this.region,
    required this.reservationType,
    required this.startDate,
    required this.state,
    required this.tags,
    required this.tenancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'availabilityZone': availabilityZone,
      'availabilityZoneId': availabilityZoneId,
      'availableInstanceCount': availableInstanceCount,
      'capacityBlockId': capacityBlockId,
      'commitmentInfo': commitmentInfo.toMap(),
      'createdDate': createdDate,
      'deliveryPreference': deliveryPreference,
      'ebsOptimized': ebsOptimized,
      'endDate': endDate,
      'endDateType': endDateType,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCapacityBlockReservationFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'instanceCount': instanceCount,
      'instanceMatchCriteria': instanceMatchCriteria,
      'instancePlatform': instancePlatform,
      'instanceType': instanceType,
      'interruptibleCapacityAllocation': interruptibleCapacityAllocation.toMap(),
      'interruptionInfo': interruptionInfo.toMap(),
      'outpostArn': outpostArn,
      'ownerId': ownerId,
      'placementGroupArn': placementGroupArn,
      'region': region,
      'reservationType': reservationType,
      'startDate': startDate,
      'state': state,
      'tags': tags,
      'tenancy': tenancy,
    };
  }

  factory GetCapacityBlockReservationResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityBlockReservationResult(
      arn: map['arn'] as String,
      availabilityZone: map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] as String,
      availableInstanceCount: map['availableInstanceCount'] as int,
      capacityBlockId: map['capacityBlockId'] as String,
      commitmentInfo: GetCapacityBlockReservationCommitmentInfo.fromMap((map['commitmentInfo']! as Map).cast<String, dynamic>()),
      createdDate: map['createdDate'] as String,
      deliveryPreference: map['deliveryPreference'] as String,
      ebsOptimized: map['ebsOptimized'] as bool,
      endDate: map['endDate'] as String,
      endDateType: map['endDateType'] as String,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCapacityBlockReservationFilter>(guardedValue, (value) => GetCapacityBlockReservationFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      instanceCount: map['instanceCount'] as int,
      instanceMatchCriteria: map['instanceMatchCriteria'] as String,
      instancePlatform: map['instancePlatform'] as String,
      instanceType: map['instanceType'] as String,
      interruptibleCapacityAllocation: GetCapacityBlockReservationInterruptibleCapacityAllocation.fromMap((map['interruptibleCapacityAllocation']! as Map).cast<String, dynamic>()),
      interruptionInfo: GetCapacityBlockReservationInterruptionInfo.fromMap((map['interruptionInfo']! as Map).cast<String, dynamic>()),
      outpostArn: map['outpostArn'] as String,
      ownerId: map['ownerId'] as String,
      placementGroupArn: map['placementGroupArn'] as String,
      region: map['region'] as String,
      reservationType: map['reservationType'] as String,
      startDate: map['startDate'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tenancy: map['tenancy'] as String,
    );
  }
}
