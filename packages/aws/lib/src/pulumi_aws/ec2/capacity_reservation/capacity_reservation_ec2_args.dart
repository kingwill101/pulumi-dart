// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for CapacityReservation.
class CapacityReservationEc2Args {
  /// The Availability Zone in which to create the Capacity Reservation.
  final pulumi.Input<String> availabilityZone;

  /// Indicates whether the Capacity Reservation supports EBS-optimized instances.
  final pulumi.Input<bool>? ebsOptimized;

  /// The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? endDate;

  /// Indicates the way in which the Capacity Reservation ends. Specify either `unlimited` or `limited`.
  final pulumi.Input<String>? endDateType;

  /// Indicates whether the Capacity Reservation supports instances with temporary, block-level storage.
  final pulumi.Input<bool>? ephemeralStorage;

  /// The number of instances for which to reserve capacity.
  final pulumi.Input<int> instanceCount;

  /// Indicates the type of instance launches that the Capacity Reservation accepts. Specify either `open` or `targeted`.
  final pulumi.Input<String>? instanceMatchCriteria;

  /// The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  final pulumi.Input<String> instancePlatform;

  /// The instance type for which to reserve capacity.
  final pulumi.Input<String> instanceType;

  /// The Amazon Resource Name (ARN) of the Outpost on which to create the Capacity Reservation.
  final pulumi.Input<String>? outpostArn;

  /// The Amazon Resource Name (ARN) of the cluster placement group in which to create the Capacity Reservation.
  final pulumi.Input<String>? placementGroupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`.
  final pulumi.Input<String>? tenancy;

  CapacityReservationEc2Args({
    required this.availabilityZone,
    this.ebsOptimized,
    this.endDate,
    this.endDateType,
    this.ephemeralStorage,
    required this.instanceCount,
    this.instanceMatchCriteria,
    required this.instancePlatform,
    required this.instanceType,
    this.outpostArn,
    this.placementGroupArn,
    this.region,
    this.tags,
    this.tenancy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZone'] = availabilityZone;
    final ebsOptimizedValue = ebsOptimized;
    if (ebsOptimizedValue != null) {
      map['ebsOptimized'] = ebsOptimizedValue;
    }
    final endDateValue = endDate;
    if (endDateValue != null) {
      map['endDate'] = endDateValue;
    }
    final endDateTypeValue = endDateType;
    if (endDateTypeValue != null) {
      map['endDateType'] = endDateTypeValue;
    }
    final ephemeralStorageValue = ephemeralStorage;
    if (ephemeralStorageValue != null) {
      map['ephemeralStorage'] = ephemeralStorageValue;
    }
    map['instanceCount'] = instanceCount;
    final instanceMatchCriteriaValue = instanceMatchCriteria;
    if (instanceMatchCriteriaValue != null) {
      map['instanceMatchCriteria'] = instanceMatchCriteriaValue;
    }
    map['instancePlatform'] = instancePlatform;
    map['instanceType'] = instanceType;
    final outpostArnValue = outpostArn;
    if (outpostArnValue != null) {
      map['outpostArn'] = outpostArnValue;
    }
    final placementGroupArnValue = placementGroupArn;
    if (placementGroupArnValue != null) {
      map['placementGroupArn'] = placementGroupArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tenancyValue = tenancy;
    if (tenancyValue != null) {
      map['tenancy'] = tenancyValue;
    }
    return map;
  }

  factory CapacityReservationEc2Args.fromMap(Map<String, dynamic> map) {
    return CapacityReservationEc2Args(
      availabilityZone: pulumi.Input.asInput<String>(map['availabilityZone']),
      ebsOptimized: pulumi.Input.asOptionalInput<bool>(map['ebsOptimized']),
      endDate: pulumi.Input.asOptionalInput<String>(map['endDate']),
      endDateType: pulumi.Input.asOptionalInput<String>(map['endDateType']),
      ephemeralStorage:
          pulumi.Input.asOptionalInput<bool>(map['ephemeralStorage']),
      instanceCount: pulumi.Input.asInput<int>(map['instanceCount']),
      instanceMatchCriteria:
          pulumi.Input.asOptionalInput<String>(map['instanceMatchCriteria']),
      instancePlatform: pulumi.Input.asInput<String>(map['instancePlatform']),
      instanceType: pulumi.Input.asInput<String>(map['instanceType']),
      outpostArn: pulumi.Input.asOptionalInput<String>(map['outpostArn']),
      placementGroupArn:
          pulumi.Input.asOptionalInput<String>(map['placementGroupArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      tenancy: pulumi.Input.asOptionalInput<String>(map['tenancy']),
    );
  }
}
