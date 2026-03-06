// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Switch resources.
class SwitchState {
  /// Field `availability_zone` has been deprecated from provider version 1.119.0. New field `zone_id` instead.
  final pulumi.Input<String>? availabilityZone;
  /// The IPv4 CIDR block of the VSwitch. **NOTE:** From version 1.233.0, if you do not set `is_default`, or set `is_default` to `false`, `cidr_block` is required.
  final pulumi.Input<String>? cidrBlock;
  /// The creation time of the VSwitch.
  final pulumi.Input<String>? createTime;
  /// The description of VSwitch.
  final pulumi.Input<String>? description;
  /// Whether the IPv6 function is enabled in the switch. Value:
  final pulumi.Input<bool>? enableIpv6;
  /// The IPv6 CIDR block of the VSwitch.
  final pulumi.Input<String>? ipv6CidrBlock;
  /// The IPv6 CIDR block of the VSwitch.
  final pulumi.Input<int>? ipv6CidrBlockMask;
  /// Specifies whether to create the default VSwitch. Default value: `false`. Valid values:
  final pulumi.Input<bool>? isDefault;
  /// Field `name` has been deprecated from provider version 1.119.0. New field `vswitch_name` instead.
  final pulumi.Input<String>? name;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The tags of VSwitch.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC ID. **NOTE:** From version 1.233.0, if you do not set `is_default`, or set `is_default` to `false`, `vpc_id` is required.
  final pulumi.Input<String>? vpcId;
  /// The name of the VSwitch.
  final pulumi.Input<String>? vswitchName;
  /// The AZ for the VSwitch. **Note:** Required for a VPC VSwitch.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [SwitchState].
  /// [availabilityZone] Field `availability_zone` has been deprecated from provider version 1.119.0. New field `zone_id` instead.
  /// [cidrBlock] The IPv4 CIDR block of the VSwitch. **NOTE:** From version 1.233.0, if you do not set `is_default`, or set `is_default` to `false`, `cidr_block` is required.
  /// [createTime] The creation time of the VSwitch.
  /// [description] The description of VSwitch.
  /// [enableIpv6] Whether the IPv6 function is enabled in the switch. Value:
  /// [ipv6CidrBlock] The IPv6 CIDR block of the VSwitch.
  /// [ipv6CidrBlockMask] The IPv6 CIDR block of the VSwitch.
  /// [isDefault] Specifies whether to create the default VSwitch. Default value: `false`. Valid values:
  /// [name] Field `name` has been deprecated from provider version 1.119.0. New field `vswitch_name` instead.
  /// [status] The status of the resource.
  /// [tags] The tags of VSwitch.
  /// [vpcId] The VPC ID. **NOTE:** From version 1.233.0, if you do not set `is_default`, or set `is_default` to `false`, `vpc_id` is required.
  /// [vswitchName] The name of the VSwitch.
  /// [zoneId] The AZ for the VSwitch. **Note:** Required for a VPC VSwitch.
  const SwitchState({
    this.availabilityZone,
    this.cidrBlock,
    this.createTime,
    this.description,
    this.enableIpv6,
    this.ipv6CidrBlock,
    this.ipv6CidrBlockMask,
    this.isDefault,
    this.name,
    this.status,
    this.tags,
    this.vpcId,
    this.vswitchName,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'cidrBlock': ?cidrBlock,
      'createTime': ?createTime,
      'description': ?description,
      'enableIpv6': ?enableIpv6,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6CidrBlockMask': ?ipv6CidrBlockMask,
      'isDefault': ?isDefault,
      'name': ?name,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchName': ?vswitchName,
      'zoneId': ?zoneId,
    };
  }

  factory SwitchState.fromMap(Map<String, dynamic> map) {
    return SwitchState(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableIpv6: (() { final guardedValue = map['enableIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv6CidrBlock: (() { final guardedValue = map['ipv6CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6CidrBlockMask: (() { final guardedValue = map['ipv6CidrBlockMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchName: (() { final guardedValue = map['vswitchName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

