// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_switch_switch_args_doc}
/// The set of arguments for Switch.
/// {@endtemplate}
/// {@macro pulumi_vpc_switch_switch_args_doc}
class SwitchArgs {
  /// Field `availability_zone` has been deprecated from provider version 1.119.0. New field `zone_id` instead.
  final pulumi.Input<String>? availabilityZone;
  /// The IPv4 CIDR block of the VSwitch. **NOTE:** From version 1.233.0, if you do not set `is_default`, or set `is_default` to `false`, `cidr_block` is required.
  final pulumi.Input<String>? cidrBlock;
  /// The description of VSwitch.
  final pulumi.Input<String>? description;
  /// Whether the IPv6 function is enabled in the switch. Value:
  final pulumi.Input<bool>? enableIpv6;
  /// The IPv6 CIDR block of the VSwitch.
  final pulumi.Input<int>? ipv6CidrBlockMask;
  /// Specifies whether to create the default VSwitch. Default value: `false`. Valid values:
  final pulumi.Input<bool>? isDefault;
  /// Field `name` has been deprecated from provider version 1.119.0. New field `vswitch_name` instead.
  final pulumi.Input<String>? name;
  /// The tags of VSwitch.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC ID. **NOTE:** From version 1.233.0, if you do not set `is_default`, or set `is_default` to `false`, `vpc_id` is required.
  final pulumi.Input<String>? vpcId;
  /// The name of the VSwitch.
  final pulumi.Input<String>? vswitchName;
  /// The AZ for the VSwitch. **Note:** Required for a VPC VSwitch.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [SwitchArgs].
  /// [availabilityZone] Field `availability_zone` has been deprecated from provider version 1.119.0. New field `zone_id` instead.
  /// [cidrBlock] The IPv4 CIDR block of the VSwitch. **NOTE:** From version 1.233.0, if you do not set `is_default`, or set `is_default` to `false`, `cidr_block` is required.
  /// [description] The description of VSwitch.
  /// [enableIpv6] Whether the IPv6 function is enabled in the switch. Value:
  /// [ipv6CidrBlockMask] The IPv6 CIDR block of the VSwitch.
  /// [isDefault] Specifies whether to create the default VSwitch. Default value: `false`. Valid values:
  /// [name] Field `name` has been deprecated from provider version 1.119.0. New field `vswitch_name` instead.
  /// [tags] The tags of VSwitch.
  /// [vpcId] The VPC ID. **NOTE:** From version 1.233.0, if you do not set `is_default`, or set `is_default` to `false`, `vpc_id` is required.
  /// [vswitchName] The name of the VSwitch.
  /// [zoneId] The AZ for the VSwitch. **Note:** Required for a VPC VSwitch.
  SwitchArgs({
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableIpv6,
    pulumi.Output<int>? ipv6CidrBlockMask,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchName,
    pulumi.Output<String>? zoneId,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableIpv6 = pulumi.Input.asOptionalInput<bool>(enableIpv6),
      ipv6CidrBlockMask = pulumi.Input.asOptionalInput<int>(ipv6CidrBlockMask),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchName = pulumi.Input.asOptionalInput<String>(vswitchName),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'cidrBlock': ?cidrBlock,
      'description': ?description,
      'enableIpv6': ?enableIpv6,
      'ipv6CidrBlockMask': ?ipv6CidrBlockMask,
      'isDefault': ?isDefault,
      'name': ?name,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchName': ?vswitchName,
      'zoneId': ?zoneId,
    };
  }

  factory SwitchArgs.fromMap(Map<String, dynamic> map) {
    return SwitchArgs(
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableIpv6: map['enableIpv6'] == null ? null : pulumi.Output.create<bool>(map['enableIpv6'] as bool),
      ipv6CidrBlockMask: map['ipv6CidrBlockMask'] == null ? null : pulumi.Output.create<int>(map['ipv6CidrBlockMask'] as int),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchName: map['vswitchName'] == null ? null : pulumi.Output.create<String>(map['vswitchName'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

