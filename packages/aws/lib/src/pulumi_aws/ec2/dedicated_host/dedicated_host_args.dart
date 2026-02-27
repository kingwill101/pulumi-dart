// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DedicatedHost.
class DedicatedHostArgs {
  /// The ID of the Outpost hardware asset on which to allocate the Dedicated Hosts. This parameter is supported only if you specify OutpostArn. If you are allocating the Dedicated Hosts in a Region, omit this parameter.
  final pulumi.Input<String>? assetId;

  /// Indicates whether the host accepts any untargeted instance launches that match its instance type configuration, or if it only accepts Host tenancy instance launches that specify its unique host ID. Valid values: `on`, `off`. Default: `on`.
  final pulumi.Input<String>? autoPlacement;

  /// The Availability Zone in which to allocate the Dedicated Host.
  final pulumi.Input<String> availabilityZone;

  /// Indicates whether to enable or disable host recovery for the Dedicated Host. Valid values: `on`, `off`. Default: `off`.
  final pulumi.Input<String>? hostRecovery;

  /// Specifies the instance family to be supported by the Dedicated Hosts. If you specify an instance family, the Dedicated Hosts support multiple instance types within that instance family. Exactly one of `instance_family` or `instance_type` must be specified.
  final pulumi.Input<String>? instanceFamily;

  /// Specifies the instance type to be supported by the Dedicated Hosts. If you specify an instance type, the Dedicated Hosts support instances of the specified instance type only. Exactly one of `instance_family` or `instance_type` must be specified.
  final pulumi.Input<String>? instanceType;

  /// The Amazon Resource Name (ARN) of the AWS Outpost on which to allocate the Dedicated Host.
  final pulumi.Input<String>? outpostArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
      assetId: pulumi.Input.asOptionalInput<String>(map['assetId']),
      autoPlacement: pulumi.Input.asOptionalInput<String>(map['autoPlacement']),
      availabilityZone: pulumi.Input.asInput<String>(map['availabilityZone']),
      hostRecovery: pulumi.Input.asOptionalInput<String>(map['hostRecovery']),
      instanceFamily:
          pulumi.Input.asOptionalInput<String>(map['instanceFamily']),
      instanceType: pulumi.Input.asOptionalInput<String>(map['instanceType']),
      outpostArn: pulumi.Input.asOptionalInput<String>(map['outpostArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
