// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_block_reservation_timeouts.dart';

/// Input properties used for looking up and filtering CapacityBlockReservation resources.
class CapacityBlockReservationState {
  /// The ARN of the reservation.
  final pulumi.Input<String>? arn;
  /// The Availability Zone in which to create the Capacity Block Reservation.
  final pulumi.Input<String>? availabilityZone;
  /// The Capacity Block Reservation ID.
  final pulumi.Input<String>? capacityBlockOfferingId;
  /// The date and time at which the Capacity Block Reservation was created.
  final pulumi.Input<String>? createdDate;
  /// Indicates whether the Capacity Reservation supports EBS-optimized instances.
  final pulumi.Input<bool>? ebsOptimized;
  /// The date and time at which the Capacity Block Reservation expires. When a Capacity Block Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? endDate;
  /// Indicates the way in which the Capacity Reservation ends.
  final pulumi.Input<String>? endDateType;
  /// The number of instances for which to reserve capacity.
  final pulumi.Input<int>? instanceCount;
  /// The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  final pulumi.Input<String>? instancePlatform;
  /// The instance type for which to reserve capacity.
  final pulumi.Input<String>? instanceType;
  /// The ARN of the Outpost on which to create the Capacity Block Reservation.
  final pulumi.Input<String>? outpostArn;
  /// The ARN of the placement group in which to create the Capacity Block Reservation.
  final pulumi.Input<String>? placementGroupArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The type of Capacity Reservation.
  final pulumi.Input<String>? reservationType;
  /// The date and time at which the Capacity Block Reservation starts. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? startDate;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Indicates the tenancy of the Capacity Block Reservation. Specify either `default` or `dedicated`.
  final pulumi.Input<String>? tenancy;
  final pulumi.Input<CapacityBlockReservationTimeouts>? timeouts;

  /// Creates a new [CapacityBlockReservationState].
  /// [arn] The ARN of the reservation.
  /// [availabilityZone] The Availability Zone in which to create the Capacity Block Reservation.
  /// [capacityBlockOfferingId] The Capacity Block Reservation ID.
  /// [createdDate] The date and time at which the Capacity Block Reservation was created.
  /// [ebsOptimized] Indicates whether the Capacity Reservation supports EBS-optimized instances.
  /// [endDate] The date and time at which the Capacity Block Reservation expires. When a Capacity Block Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  /// [endDateType] Indicates the way in which the Capacity Reservation ends.
  /// [instanceCount] The number of instances for which to reserve capacity.
  /// [instancePlatform] The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  /// [instanceType] The instance type for which to reserve capacity.
  /// [outpostArn] The ARN of the Outpost on which to create the Capacity Block Reservation.
  /// [placementGroupArn] The ARN of the placement group in which to create the Capacity Block Reservation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservationType] The type of Capacity Reservation.
  /// [startDate] The date and time at which the Capacity Block Reservation starts. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block
  /// [tenancy] Indicates the tenancy of the Capacity Block Reservation. Specify either `default` or `dedicated`.
  /// [timeouts] Optional.
  CapacityBlockReservationState({
    this.arn,
    this.availabilityZone,
    this.capacityBlockOfferingId,
    this.createdDate,
    this.ebsOptimized,
    this.endDate,
    this.endDateType,
    this.instanceCount,
    this.instancePlatform,
    this.instanceType,
    this.outpostArn,
    this.placementGroupArn,
    this.region,
    this.reservationType,
    this.startDate,
    this.tags,
    this.tagsAll,
    this.tenancy,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'capacityBlockOfferingId': ?capacityBlockOfferingId,
      'createdDate': ?createdDate,
      'ebsOptimized': ?ebsOptimized,
      'endDate': ?endDate,
      'endDateType': ?endDateType,
      'instanceCount': ?instanceCount,
      'instancePlatform': ?instancePlatform,
      'instanceType': ?instanceType,
      'outpostArn': ?outpostArn,
      'placementGroupArn': ?placementGroupArn,
      'region': ?region,
      'reservationType': ?reservationType,
      'startDate': ?startDate,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tenancy': ?tenancy,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CapacityBlockReservationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CapacityBlockReservationState.fromMap(Map<String, dynamic> map) {
    return CapacityBlockReservationState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      capacityBlockOfferingId: map['capacityBlockOfferingId'] == null ? null : ((map['capacityBlockOfferingId'] as String).input()).input(),
      createdDate: map['createdDate'] == null ? null : ((map['createdDate'] as String).input()).input(),
      ebsOptimized: map['ebsOptimized'] == null ? null : ((map['ebsOptimized'] as bool).input()).input(),
      endDate: map['endDate'] == null ? null : ((map['endDate'] as String).input()).input(),
      endDateType: map['endDateType'] == null ? null : ((map['endDateType'] as String).input()).input(),
      instanceCount: map['instanceCount'] == null ? null : ((map['instanceCount'] as int).input()).input(),
      instancePlatform: map['instancePlatform'] == null ? null : ((map['instancePlatform'] as String).input()).input(),
      instanceType: map['instanceType'] == null ? null : ((map['instanceType'] as String).input()).input(),
      outpostArn: map['outpostArn'] == null ? null : ((map['outpostArn'] as String).input()).input(),
      placementGroupArn: map['placementGroupArn'] == null ? null : ((map['placementGroupArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      reservationType: map['reservationType'] == null ? null : ((map['reservationType'] as String).input()).input(),
      startDate: map['startDate'] == null ? null : ((map['startDate'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      tenancy: map['tenancy'] == null ? null : ((map['tenancy'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((CapacityBlockReservationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

