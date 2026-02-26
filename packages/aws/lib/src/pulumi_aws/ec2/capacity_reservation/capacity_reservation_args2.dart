// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CapacityReservation.
class CapacityReservationArgs2 {
  /// The Availability Zone in which to create the Capacity Reservation.
  final Input<String> availabilityZone;

  /// Indicates whether the Capacity Reservation supports EBS-optimized instances.
  final Input<bool>? ebsOptimized;

  /// The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final Input<String>? endDate;

  /// Indicates the way in which the Capacity Reservation ends. Specify either <span pulumi-lang-nodejs="`unlimited`" pulumi-lang-dotnet="`Unlimited`" pulumi-lang-go="`unlimited`" pulumi-lang-python="`unlimited`" pulumi-lang-yaml="`unlimited`" pulumi-lang-java="`unlimited`">`unlimited`</span> or <span pulumi-lang-nodejs="`limited`" pulumi-lang-dotnet="`Limited`" pulumi-lang-go="`limited`" pulumi-lang-python="`limited`" pulumi-lang-yaml="`limited`" pulumi-lang-java="`limited`">`limited`</span>.
  final Input<String>? endDateType;

  /// Indicates whether the Capacity Reservation supports instances with temporary, block-level storage.
  final Input<bool>? ephemeralStorage;

  /// The number of instances for which to reserve capacity.
  final Input<int> instanceCount;

  /// Indicates the type of instance launches that the Capacity Reservation accepts. Specify either <span pulumi-lang-nodejs="`open`" pulumi-lang-dotnet="`Open`" pulumi-lang-go="`open`" pulumi-lang-python="`open`" pulumi-lang-yaml="`open`" pulumi-lang-java="`open`">`open`</span> or <span pulumi-lang-nodejs="`targeted`" pulumi-lang-dotnet="`Targeted`" pulumi-lang-go="`targeted`" pulumi-lang-python="`targeted`" pulumi-lang-yaml="`targeted`" pulumi-lang-java="`targeted`">`targeted`</span>.
  final Input<String>? instanceMatchCriteria;

  /// The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  final Input<String> instancePlatform;

  /// The instance type for which to reserve capacity.
  final Input<String> instanceType;

  /// The Amazon Resource Name (ARN) of the Outpost on which to create the Capacity Reservation.
  final Input<String>? outpostArn;

  /// The Amazon Resource Name (ARN) of the cluster placement group in which to create the Capacity Reservation.
  final Input<String>? placementGroupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Indicates the tenancy of the Capacity Reservation. Specify either <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> or <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span>.
  final Input<String>? tenancy;

  CapacityReservationArgs2({
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

  factory CapacityReservationArgs2.fromMap(Map<String, dynamic> map) {
    return CapacityReservationArgs2(
      availabilityZone: Input.asInput<String>(map['availabilityZone']),
      ebsOptimized: Input.asOptionalInput<bool>(map['ebsOptimized']),
      endDate: Input.asOptionalInput<String>(map['endDate']),
      endDateType: Input.asOptionalInput<String>(map['endDateType']),
      ephemeralStorage: Input.asOptionalInput<bool>(map['ephemeralStorage']),
      instanceCount: Input.asInput<int>(map['instanceCount']),
      instanceMatchCriteria:
          Input.asOptionalInput<String>(map['instanceMatchCriteria']),
      instancePlatform: Input.asInput<String>(map['instancePlatform']),
      instanceType: Input.asInput<String>(map['instanceType']),
      outpostArn: Input.asOptionalInput<String>(map['outpostArn']),
      placementGroupArn:
          Input.asOptionalInput<String>(map['placementGroupArn']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tenancy: Input.asOptionalInput<String>(map['tenancy']),
    );
  }
}
