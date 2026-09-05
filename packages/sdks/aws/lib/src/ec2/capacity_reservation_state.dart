// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CapacityReservation resources.
class CapacityReservationState {
  /// The ARN of the Capacity Reservation.
  final pulumi.Input<String?>? arn;
  /// The Availability Zone in which to create the Capacity Reservation.
  final pulumi.Input<String?>? availabilityZone;
  /// Indicates whether the Capacity Reservation supports EBS-optimized instances.
  final pulumi.Input<bool?>? ebsOptimized;
  /// The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String?>? endDate;
  /// Indicates the way in which the Capacity Reservation ends. Specify either `unlimited` or `limited`.
  final pulumi.Input<String?>? endDateType;
  /// Indicates whether the Capacity Reservation supports instances with temporary, block-level storage.
  final pulumi.Input<bool?>? ephemeralStorage;
  /// The number of instances for which to reserve capacity.
  final pulumi.Input<int?>? instanceCount;
  /// Indicates the type of instance launches that the Capacity Reservation accepts. Specify either `open` or `targeted`.
  final pulumi.Input<String?>? instanceMatchCriteria;
  /// The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  final pulumi.Input<dynamic>? instancePlatform;
  /// The instance type for which to reserve capacity.
  final pulumi.Input<dynamic>? instanceType;
  /// ARN of the Outpost on which to create the Capacity Reservation.
  final pulumi.Input<String?>? outpostArn;
  /// The ID of the AWS account that owns the Capacity Reservation.
  final pulumi.Input<String?>? ownerId;
  /// ARN of the cluster placement group in which to create the Capacity Reservation.
  final pulumi.Input<String?>? placementGroupArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`.
  final pulumi.Input<dynamic>? tenancy;

  /// Creates a new [CapacityReservationState].
  /// [arn] The ARN of the Capacity Reservation.
  /// [availabilityZone] The Availability Zone in which to create the Capacity Reservation.
  /// [ebsOptimized] Indicates whether the Capacity Reservation supports EBS-optimized instances.
  /// [endDate] The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  /// [endDateType] Indicates the way in which the Capacity Reservation ends. Specify either `unlimited` or `limited`.
  /// [ephemeralStorage] Indicates whether the Capacity Reservation supports instances with temporary, block-level storage.
  /// [instanceCount] The number of instances for which to reserve capacity.
  /// [instanceMatchCriteria] Indicates the type of instance launches that the Capacity Reservation accepts. Specify either `open` or `targeted`.
  /// [instancePlatform] The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  /// [instanceType] The instance type for which to reserve capacity.
  /// [outpostArn] ARN of the Outpost on which to create the Capacity Reservation.
  /// [ownerId] The ID of the AWS account that owns the Capacity Reservation.
  /// [placementGroupArn] ARN of the cluster placement group in which to create the Capacity Reservation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block
  /// [tenancy] Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`.
  const CapacityReservationState({
    this.arn,
    this.availabilityZone,
    this.ebsOptimized,
    this.endDate,
    this.endDateType,
    this.ephemeralStorage,
    this.instanceCount,
    this.instanceMatchCriteria,
    this.instancePlatform,
    this.instanceType,
    this.outpostArn,
    this.ownerId,
    this.placementGroupArn,
    this.region,
    this.tags,
    this.tagsAll,
    this.tenancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'ebsOptimized': ?ebsOptimized,
      'endDate': ?endDate,
      'endDateType': ?endDateType,
      'ephemeralStorage': ?ephemeralStorage,
      'instanceCount': ?instanceCount,
      'instanceMatchCriteria': ?instanceMatchCriteria,
      'instancePlatform': ?instancePlatform,
      'instanceType': ?instanceType,
      'outpostArn': ?outpostArn,
      'ownerId': ?ownerId,
      'placementGroupArn': ?placementGroupArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tenancy': ?tenancy,
    };
  }

  factory CapacityReservationState.fromMap(Map<String, dynamic> map) {
    return CapacityReservationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebsOptimized: (() { final guardedValue = map['ebsOptimized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endDateType: (() { final guardedValue = map['endDateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ephemeralStorage: (() { final guardedValue = map['ephemeralStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      instanceMatchCriteria: (() { final guardedValue = map['instanceMatchCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instancePlatform: (() { final guardedValue = map['instancePlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementGroupArn: (() { final guardedValue = map['placementGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenancy: (() { final guardedValue = map['tenancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
