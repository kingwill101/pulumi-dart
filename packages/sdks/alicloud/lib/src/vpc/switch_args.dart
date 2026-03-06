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
  const SwitchArgs({
    this.availabilityZone,
    this.cidrBlock,
    this.description,
    this.enableIpv6,
    this.ipv6CidrBlockMask,
    this.isDefault,
    this.name,
    this.tags,
    this.vpcId,
    this.vswitchName,
    this.zoneId,
  });

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
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableIpv6: (() { final guardedValue = map['enableIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv6CidrBlockMask: (() { final guardedValue = map['ipv6CidrBlockMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchName: (() { final guardedValue = map['vswitchName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

