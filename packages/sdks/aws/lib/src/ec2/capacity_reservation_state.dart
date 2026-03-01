// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CapacityReservation resources.
class CapacityReservationState {
  /// The ARN of the Capacity Reservation.
  final pulumi.Input<String>? arn;
  /// The Availability Zone in which to create the Capacity Reservation.
  final pulumi.Input<String>? availabilityZone;
  /// Indicates whether the Capacity Reservation supports EBS-optimized instances.
  final pulumi.Input<bool>? ebsOptimized;
  /// The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? endDate;
  /// Indicates the way in which the Capacity Reservation ends. Specify either `unlimited` or `limited`.
  final pulumi.Input<String>? endDateType;
  /// Indicates whether the Capacity Reservation supports instances with temporary, block-level storage.
  final pulumi.Input<bool>? ephemeralStorage;
  /// The number of instances for which to reserve capacity.
  final pulumi.Input<int>? instanceCount;
  /// Indicates the type of instance launches that the Capacity Reservation accepts. Specify either `open` or `targeted`.
  final pulumi.Input<String>? instanceMatchCriteria;
  /// The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  final pulumi.Input<String>? instancePlatform;
  /// The instance type for which to reserve capacity.
  final pulumi.Input<String>? instanceType;
  /// The Amazon Resource Name (ARN) of the Outpost on which to create the Capacity Reservation.
  final pulumi.Input<String>? outpostArn;
  /// The ID of the AWS account that owns the Capacity Reservation.
  final pulumi.Input<String>? ownerId;
  /// The Amazon Resource Name (ARN) of the cluster placement group in which to create the Capacity Reservation.
  final pulumi.Input<String>? placementGroupArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`.
  final pulumi.Input<String>? tenancy;

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
  /// [outpostArn] The Amazon Resource Name (ARN) of the Outpost on which to create the Capacity Reservation.
  /// [ownerId] The ID of the AWS account that owns the Capacity Reservation.
  /// [placementGroupArn] The Amazon Resource Name (ARN) of the cluster placement group in which to create the Capacity Reservation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block
  /// [tenancy] Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`.
  CapacityReservationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<bool>? ebsOptimized,
    pulumi.Output<String>? endDate,
    pulumi.Output<String>? endDateType,
    pulumi.Output<bool>? ephemeralStorage,
    pulumi.Output<int>? instanceCount,
    pulumi.Output<String>? instanceMatchCriteria,
    pulumi.Output<String>? instancePlatform,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? outpostArn,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? placementGroupArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? tenancy,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      ebsOptimized = pulumi.Input.asOptionalInput<bool>(ebsOptimized),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      endDateType = pulumi.Input.asOptionalInput<String>(endDateType),
      ephemeralStorage = pulumi.Input.asOptionalInput<bool>(ephemeralStorage),
      instanceCount = pulumi.Input.asOptionalInput<int>(instanceCount),
      instanceMatchCriteria = pulumi.Input.asOptionalInput<String>(instanceMatchCriteria),
      instancePlatform = pulumi.Input.asOptionalInput<String>(instancePlatform),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      outpostArn = pulumi.Input.asOptionalInput<String>(outpostArn),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      placementGroupArn = pulumi.Input.asOptionalInput<String>(placementGroupArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tenancy = pulumi.Input.asOptionalInput<String>(tenancy);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      ebsOptimized: map['ebsOptimized'] == null ? null : pulumi.Output.create<bool>(map['ebsOptimized'] as bool),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      endDateType: map['endDateType'] == null ? null : pulumi.Output.create<String>(map['endDateType'] as String),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : pulumi.Output.create<bool>(map['ephemeralStorage'] as bool),
      instanceCount: map['instanceCount'] == null ? null : pulumi.Output.create<int>(map['instanceCount'] as int),
      instanceMatchCriteria: map['instanceMatchCriteria'] == null ? null : pulumi.Output.create<String>(map['instanceMatchCriteria'] as String),
      instancePlatform: map['instancePlatform'] == null ? null : pulumi.Output.create<String>(map['instancePlatform'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      outpostArn: map['outpostArn'] == null ? null : pulumi.Output.create<String>(map['outpostArn'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      placementGroupArn: map['placementGroupArn'] == null ? null : pulumi.Output.create<String>(map['placementGroupArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tenancy: map['tenancy'] == null ? null : pulumi.Output.create<String>(map['tenancy'] as String),
    );
  }
}

