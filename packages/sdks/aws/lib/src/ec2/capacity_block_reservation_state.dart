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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? capacityBlockOfferingId,
    pulumi.Output<String>? createdDate,
    pulumi.Output<bool>? ebsOptimized,
    pulumi.Output<String>? endDate,
    pulumi.Output<String>? endDateType,
    pulumi.Output<int>? instanceCount,
    pulumi.Output<String>? instancePlatform,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? outpostArn,
    pulumi.Output<String>? placementGroupArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? reservationType,
    pulumi.Output<String>? startDate,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? tenancy,
    pulumi.Output<CapacityBlockReservationTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      capacityBlockOfferingId = pulumi.Input.asOptionalInput<String>(capacityBlockOfferingId),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      ebsOptimized = pulumi.Input.asOptionalInput<bool>(ebsOptimized),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      endDateType = pulumi.Input.asOptionalInput<String>(endDateType),
      instanceCount = pulumi.Input.asOptionalInput<int>(instanceCount),
      instancePlatform = pulumi.Input.asOptionalInput<String>(instancePlatform),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      outpostArn = pulumi.Input.asOptionalInput<String>(outpostArn),
      placementGroupArn = pulumi.Input.asOptionalInput<String>(placementGroupArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservationType = pulumi.Input.asOptionalInput<String>(reservationType),
      startDate = pulumi.Input.asOptionalInput<String>(startDate),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tenancy = pulumi.Input.asOptionalInput<String>(tenancy),
      timeouts = pulumi.Input.asOptionalInput<CapacityBlockReservationTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      capacityBlockOfferingId: map['capacityBlockOfferingId'] == null ? null : pulumi.Output.create<String>(map['capacityBlockOfferingId'] as String),
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      ebsOptimized: map['ebsOptimized'] == null ? null : pulumi.Output.create<bool>(map['ebsOptimized'] as bool),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      endDateType: map['endDateType'] == null ? null : pulumi.Output.create<String>(map['endDateType'] as String),
      instanceCount: map['instanceCount'] == null ? null : pulumi.Output.create<int>(map['instanceCount'] as int),
      instancePlatform: map['instancePlatform'] == null ? null : pulumi.Output.create<String>(map['instancePlatform'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      outpostArn: map['outpostArn'] == null ? null : pulumi.Output.create<String>(map['outpostArn'] as String),
      placementGroupArn: map['placementGroupArn'] == null ? null : pulumi.Output.create<String>(map['placementGroupArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservationType: map['reservationType'] == null ? null : pulumi.Output.create<String>(map['reservationType'] as String),
      startDate: map['startDate'] == null ? null : pulumi.Output.create<String>(map['startDate'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tenancy: map['tenancy'] == null ? null : pulumi.Output.create<String>(map['tenancy'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<CapacityBlockReservationTimeouts>(CapacityBlockReservationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

