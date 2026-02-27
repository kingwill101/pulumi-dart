// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DedicatedHost.
class DedicatedHostArgs {
  /// The ID of the Outpost hardware asset on which to allocate the Dedicated Hosts. This parameter is supported only if you specify OutpostArn. If you are allocating the Dedicated Hosts in a Region, omit this parameter.
  final Input<String>? assetId;

  /// Indicates whether the host accepts any untargeted instance launches that match its instance type configuration, or if it only accepts Host tenancy instance launches that specify its unique host ID. Valid values: `on`, `off`. Default: `on`.
  final Input<String>? autoPlacement;

  /// The Availability Zone in which to allocate the Dedicated Host.
  final Input<String> availabilityZone;

  /// Indicates whether to enable or disable host recovery for the Dedicated Host. Valid values: `on`, `off`. Default: `off`.
  final Input<String>? hostRecovery;

  /// Specifies the instance family to be supported by the Dedicated Hosts. If you specify an instance family, the Dedicated Hosts support multiple instance types within that instance family. Exactly one of `instance_family` or `instance_type` must be specified.
  final Input<String>? instanceFamily;

  /// Specifies the instance type to be supported by the Dedicated Hosts. If you specify an instance type, the Dedicated Hosts support instances of the specified instance type only. Exactly one of `instance_family` or `instance_type` must be specified.
  final Input<String>? instanceType;

  /// The Amazon Resource Name (ARN) of the AWS Outpost on which to allocate the Dedicated Host.
  final Input<String>? outpostArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DedicatedHostArgs({
    this.assetId,
    this.autoPlacement,
    required this.availabilityZone,
    this.hostRecovery,
    this.instanceFamily,
    this.instanceType,
    this.outpostArn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetIdValue = assetId;
    if (assetIdValue != null) {
      map['assetId'] = assetIdValue;
    }
    final autoPlacementValue = autoPlacement;
    if (autoPlacementValue != null) {
      map['autoPlacement'] = autoPlacementValue;
    }
    map['availabilityZone'] = availabilityZone;
    final hostRecoveryValue = hostRecovery;
    if (hostRecoveryValue != null) {
      map['hostRecovery'] = hostRecoveryValue;
    }
    final instanceFamilyValue = instanceFamily;
    if (instanceFamilyValue != null) {
      map['instanceFamily'] = instanceFamilyValue;
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final outpostArnValue = outpostArn;
    if (outpostArnValue != null) {
      map['outpostArn'] = outpostArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedHostArgs(
      assetId: Input.asOptionalInput<String>(map['assetId']),
      autoPlacement: Input.asOptionalInput<String>(map['autoPlacement']),
      availabilityZone: Input.asInput<String>(map['availabilityZone']),
      hostRecovery: Input.asOptionalInput<String>(map['hostRecovery']),
      instanceFamily: Input.asOptionalInput<String>(map['instanceFamily']),
      instanceType: Input.asOptionalInput<String>(map['instanceType']),
      outpostArn: Input.asOptionalInput<String>(map['outpostArn']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
