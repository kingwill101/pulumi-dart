// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_capacity_reservation_capacity_reservation_args_doc}
/// The set of arguments for CapacityReservation.
/// {@endtemplate}
/// {@macro pulumi_ec2_capacity_reservation_capacity_reservation_args_doc}
class CapacityReservationArgs {
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

  /// Creates a new [CapacityReservationArgs].
  /// [availabilityZone] The Availability Zone in which to create the Capacity Reservation.
  /// [ebsOptimized] Indicates whether the Capacity Reservation supports EBS-optimized instances.
  /// [endDate] The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  /// [endDateType] Indicates the way in which the Capacity Reservation ends. Specify either `unlimited` or `limited`.
  /// [ephemeralStorage] Indicates whether the Capacity Reservation supports instances with temporary, block-level storage.
  /// [instanceCount] The number of instances for which to reserve capacity.
  /// [instanceMatchCriteria] Indicates the type of instance launches that the Capacity Reservation accepts. Specify either `open` or `targeted`.
  /// [instancePlatform] The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  /// [instanceType] The instance type for which to reserve capacity.
  /// [outpostArn] The Amazon Resource Name (ARN) of the Outpost on which to create the Capacity Reservation.
  /// [placementGroupArn] The Amazon Resource Name (ARN) of the cluster placement group in which to create the Capacity Reservation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tenancy] Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`.
  CapacityReservationArgs({
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
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'ebsOptimized': ?ebsOptimized,
      'endDate': ?endDate,
      'endDateType': ?endDateType,
      'ephemeralStorage': ?ephemeralStorage,
      'instanceCount': instanceCount,
      'instanceMatchCriteria': ?instanceMatchCriteria,
      'instancePlatform': instancePlatform,
      'instanceType': instanceType,
      'outpostArn': ?outpostArn,
      'placementGroupArn': ?placementGroupArn,
      'region': ?region,
      'tags': ?tags,
      'tenancy': ?tenancy,
    };
  }

  factory CapacityReservationArgs.fromMap(Map<String, dynamic> map) {
    return CapacityReservationArgs(
      availabilityZone: (map['availabilityZone'] as String).input(),
      ebsOptimized: map['ebsOptimized'] == null ? null : (map['ebsOptimized'] as bool).input(),
      endDate: map['endDate'] == null ? null : (map['endDate'] as String).input(),
      endDateType: map['endDateType'] == null ? null : (map['endDateType'] as String).input(),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : (map['ephemeralStorage'] as bool).input(),
      instanceCount: (map['instanceCount'] as int).input(),
      instanceMatchCriteria: map['instanceMatchCriteria'] == null ? null : (map['instanceMatchCriteria'] as String).input(),
      instancePlatform: (map['instancePlatform'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      outpostArn: map['outpostArn'] == null ? null : (map['outpostArn'] as String).input(),
      placementGroupArn: map['placementGroupArn'] == null ? null : (map['placementGroupArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tenancy: map['tenancy'] == null ? null : (map['tenancy'] as String).input(),
    );
  }
}

