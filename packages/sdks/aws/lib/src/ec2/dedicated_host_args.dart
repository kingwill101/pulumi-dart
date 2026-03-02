// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_dedicated_host_dedicated_host_args_doc}
/// The set of arguments for DedicatedHost.
/// {@endtemplate}
/// {@macro pulumi_ec2_dedicated_host_dedicated_host_args_doc}
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

  /// Creates a new [DedicatedHostArgs].
  /// [assetId] The ID of the Outpost hardware asset on which to allocate the Dedicated Hosts. This parameter is supported only if you specify OutpostArn. If you are allocating the Dedicated Hosts in a Region, omit this parameter.
  /// [autoPlacement] Indicates whether the host accepts any untargeted instance launches that match its instance type configuration, or if it only accepts Host tenancy instance launches that specify its unique host ID. Valid values: `on`, `off`. Default: `on`.
  /// [availabilityZone] The Availability Zone in which to allocate the Dedicated Host.
  /// [hostRecovery] Indicates whether to enable or disable host recovery for the Dedicated Host. Valid values: `on`, `off`. Default: `off`.
  /// [instanceFamily] Specifies the instance family to be supported by the Dedicated Hosts. If you specify an instance family, the Dedicated Hosts support multiple instance types within that instance family. Exactly one of `instance_family` or `instance_type` must be specified.
  /// [instanceType] Specifies the instance type to be supported by the Dedicated Hosts. If you specify an instance type, the Dedicated Hosts support instances of the specified instance type only. Exactly one of `instance_family` or `instance_type` must be specified.
  /// [outpostArn] The Amazon Resource Name (ARN) of the AWS Outpost on which to allocate the Dedicated Host.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
    return <String, dynamic>{
      'assetId': ?assetId,
      'autoPlacement': ?autoPlacement,
      'availabilityZone': availabilityZone,
      'hostRecovery': ?hostRecovery,
      'instanceFamily': ?instanceFamily,
      'instanceType': ?instanceType,
      'outpostArn': ?outpostArn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory DedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedHostArgs(
      assetId: map['assetId'] == null ? null : ((map['assetId'] as String).input()).input(),
      autoPlacement: map['autoPlacement'] == null ? null : ((map['autoPlacement'] as String).input()).input(),
      availabilityZone: (map['availabilityZone'] as String).input(),
      hostRecovery: map['hostRecovery'] == null ? null : ((map['hostRecovery'] as String).input()).input(),
      instanceFamily: map['instanceFamily'] == null ? null : ((map['instanceFamily'] as String).input()).input(),
      instanceType: map['instanceType'] == null ? null : ((map['instanceType'] as String).input()).input(),
      outpostArn: map['outpostArn'] == null ? null : ((map['outpostArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

