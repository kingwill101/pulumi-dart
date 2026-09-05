// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_dedicated_host_dedicated_host_args_doc}
/// The set of arguments for DedicatedHost.
/// {@endtemplate}
/// {@macro pulumi_ec2_dedicated_host_dedicated_host_args_doc}
class DedicatedHostArgs {
  /// The ID of the Outpost hardware asset on which to allocate the Dedicated Hosts. This parameter is supported only if you specify OutpostArn. If you are allocating the Dedicated Hosts in a Region, omit this parameter.
  final pulumi.Input<String?>? assetId;
  /// Indicates whether the host accepts any untargeted instance launches that match its instance type configuration, or if it only accepts Host tenancy instance launches that specify its unique host ID. Valid values: `on`, `off`. Default: `on`.
  final pulumi.Input<String?>? autoPlacement;
  /// The Availability Zone in which to allocate the Dedicated Host.
  final pulumi.Input<String> availabilityZone;
  /// Indicates whether to enable or disable host recovery for the Dedicated Host. Valid values: `on`, `off`. Default: `off`.
  final pulumi.Input<String?>? hostRecovery;
  /// Specifies the instance family to be supported by the Dedicated Hosts. If you specify an instance family, the Dedicated Hosts support multiple instance types within that instance family. Exactly one of `instanceFamily` or `instanceType` must be specified.
  final pulumi.Input<String?>? instanceFamily;
  /// Specifies the instance type to be supported by the Dedicated Hosts. If you specify an instance type, the Dedicated Hosts support instances of the specified instance type only. Exactly one of `instanceFamily` or `instanceType` must be specified.
  final pulumi.Input<String?>? instanceType;
  /// ARN of the AWS Outpost on which to allocate the Dedicated Host.
  final pulumi.Input<String?>? outpostArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DedicatedHostArgs].
  /// [assetId] The ID of the Outpost hardware asset on which to allocate the Dedicated Hosts. This parameter is supported only if you specify OutpostArn. If you are allocating the Dedicated Hosts in a Region, omit this parameter.
  /// [autoPlacement] Indicates whether the host accepts any untargeted instance launches that match its instance type configuration, or if it only accepts Host tenancy instance launches that specify its unique host ID. Valid values: `on`, `off`. Default: `on`.
  /// [availabilityZone] The Availability Zone in which to allocate the Dedicated Host.
  /// [hostRecovery] Indicates whether to enable or disable host recovery for the Dedicated Host. Valid values: `on`, `off`. Default: `off`.
  /// [instanceFamily] Specifies the instance family to be supported by the Dedicated Hosts. If you specify an instance family, the Dedicated Hosts support multiple instance types within that instance family. Exactly one of `instanceFamily` or `instanceType` must be specified.
  /// [instanceType] Specifies the instance type to be supported by the Dedicated Hosts. If you specify an instance type, the Dedicated Hosts support instances of the specified instance type only. Exactly one of `instanceFamily` or `instanceType` must be specified.
  /// [outpostArn] ARN of the AWS Outpost on which to allocate the Dedicated Host.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const DedicatedHostArgs({
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
      assetId: (() { final guardedValue = map['assetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoPlacement: (() { final guardedValue = map['autoPlacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      hostRecovery: (() { final guardedValue = map['hostRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceFamily: (() { final guardedValue = map['instanceFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
