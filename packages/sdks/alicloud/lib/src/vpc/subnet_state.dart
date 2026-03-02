// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Subnet resources.
class SubnetState {
  final pulumi.Input<String>? availabilityZone;
  final pulumi.Input<String>? cidrBlock;
  final pulumi.Input<String>? createTime;
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? enableIpv6;
  final pulumi.Input<String>? ipv6CidrBlock;
  final pulumi.Input<int>? ipv6CidrBlockMask;
  final pulumi.Input<bool>? isDefault;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? vpcId;
  final pulumi.Input<String>? vswitchName;
  final pulumi.Input<String>? zoneId;

  /// Creates a new [SubnetState].
  /// [availabilityZone] Optional.
  /// [cidrBlock] Optional.
  /// [createTime] Optional.
  /// [description] Optional.
  /// [enableIpv6] Optional.
  /// [ipv6CidrBlock] Optional.
  /// [ipv6CidrBlockMask] Optional.
  /// [isDefault] Optional.
  /// [name] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [vpcId] Optional.
  /// [vswitchName] Optional.
  /// [zoneId] Optional.
  SubnetState({
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

  factory SubnetState.fromMap(Map<String, dynamic> map) {
    return SubnetState(
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enableIpv6: map['enableIpv6'] == null ? null : (map['enableIpv6'] as bool).input(),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : (map['ipv6CidrBlock'] as String).input(),
      ipv6CidrBlockMask: map['ipv6CidrBlockMask'] == null ? null : (map['ipv6CidrBlockMask'] as int).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchName: map['vswitchName'] == null ? null : (map['vswitchName'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

