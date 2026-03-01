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
    required pulumi.Output<String> availabilityZone,
    pulumi.Output<bool>? ebsOptimized,
    pulumi.Output<String>? endDate,
    pulumi.Output<String>? endDateType,
    pulumi.Output<bool>? ephemeralStorage,
    required pulumi.Output<int> instanceCount,
    pulumi.Output<String>? instanceMatchCriteria,
    required pulumi.Output<String> instancePlatform,
    required pulumi.Output<String> instanceType,
    pulumi.Output<String>? outpostArn,
    pulumi.Output<String>? placementGroupArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tenancy,
  }) :
      availabilityZone = pulumi.Input.asInput<String>(availabilityZone),
      ebsOptimized = pulumi.Input.asOptionalInput<bool>(ebsOptimized),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      endDateType = pulumi.Input.asOptionalInput<String>(endDateType),
      ephemeralStorage = pulumi.Input.asOptionalInput<bool>(ephemeralStorage),
      instanceCount = pulumi.Input.asInput<int>(instanceCount),
      instanceMatchCriteria = pulumi.Input.asOptionalInput<String>(instanceMatchCriteria),
      instancePlatform = pulumi.Input.asInput<String>(instancePlatform),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      outpostArn = pulumi.Input.asOptionalInput<String>(outpostArn),
      placementGroupArn = pulumi.Input.asOptionalInput<String>(placementGroupArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenancy = pulumi.Input.asOptionalInput<String>(tenancy);

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
      availabilityZone: pulumi.Output.create<String>(map['availabilityZone'] as String),
      ebsOptimized: map['ebsOptimized'] == null ? null : pulumi.Output.create<bool>(map['ebsOptimized'] as bool),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      endDateType: map['endDateType'] == null ? null : pulumi.Output.create<String>(map['endDateType'] as String),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : pulumi.Output.create<bool>(map['ephemeralStorage'] as bool),
      instanceCount: pulumi.Output.create<int>(map['instanceCount'] as int),
      instanceMatchCriteria: map['instanceMatchCriteria'] == null ? null : pulumi.Output.create<String>(map['instanceMatchCriteria'] as String),
      instancePlatform: pulumi.Output.create<String>(map['instancePlatform'] as String),
      instanceType: pulumi.Output.create<String>(map['instanceType'] as String),
      outpostArn: map['outpostArn'] == null ? null : pulumi.Output.create<String>(map['outpostArn'] as String),
      placementGroupArn: map['placementGroupArn'] == null ? null : pulumi.Output.create<String>(map['placementGroupArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenancy: map['tenancy'] == null ? null : pulumi.Output.create<String>(map['tenancy'] as String),
    );
  }
}

