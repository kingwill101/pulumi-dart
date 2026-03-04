// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_subnet_subnet_args_doc}
/// The set of arguments for Subnet.
/// {@endtemplate}
/// {@macro pulumi_vpc_subnet_subnet_args_doc}
class SubnetArgs {
  final pulumi.Input<String>? availabilityZone;
  final pulumi.Input<String>? cidrBlock;
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? enableIpv6;
  final pulumi.Input<int>? ipv6CidrBlockMask;
  final pulumi.Input<bool>? isDefault;
  final pulumi.Input<String>? name;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? vpcId;
  final pulumi.Input<String>? vswitchName;
  final pulumi.Input<String>? zoneId;

  /// Creates a new [SubnetArgs].
  /// [availabilityZone] Optional.
  /// [cidrBlock] Optional.
  /// [description] Optional.
  /// [enableIpv6] Optional.
  /// [ipv6CidrBlockMask] Optional.
  /// [isDefault] Optional.
  /// [name] Optional.
  /// [tags] Optional.
  /// [vpcId] Optional.
  /// [vswitchName] Optional.
  /// [zoneId] Optional.
  SubnetArgs({
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

  factory SubnetArgs.fromMap(Map<String, dynamic> map) {
    return SubnetArgs(
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cidrBlock: (() {
        final guardedValue = map['cidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableIpv6: (() {
        final guardedValue = map['enableIpv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ipv6CidrBlockMask: (() {
        final guardedValue = map['ipv6CidrBlockMask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      isDefault: (() {
        final guardedValue = map['isDefault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchName: (() {
        final guardedValue = map['vswitchName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
