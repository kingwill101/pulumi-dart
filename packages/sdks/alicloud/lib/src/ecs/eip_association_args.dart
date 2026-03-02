// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_eip_association_eip_association_args_doc}
/// The set of arguments for EipAssociation.
/// {@endtemplate}
/// {@macro pulumi_ecs_eip_association_eip_association_args_doc}
class EipAssociationArgs {
  /// The ID of the EIP instance.
  final pulumi.Input<String> allocationId;
  /// Specifies whether to disassociate the EIP from a NAT gateway if a DNAT or SNAT entry is added to the NAT gateway. Valid values:
  final pulumi.Input<bool>? force;
  /// The ID of the instance with which you want to associate the EIP. You can enter the ID of a NAT gateway, CLB instance, ECS instance, secondary ENI, HAVIP, or IP address.
  final pulumi.Input<String> instanceId;
  /// The type of the instance with which you want to associate the EIP. Valid values:
  /// - `Nat`: NAT gateway
  /// - `SlbInstance`: CLB instance
  /// - `EcsInstance` (default): ECS instance
  /// - `NetworkInterface`: secondary ENI
  /// - `HaVip`: HAVIP
  /// - `IpAddress`: IP address
  ///
  /// > **NOTE:**   The default value is `EcsInstance`. If the instance with which you want to associate the EIP is not an ECS instance, this parameter is required.
  final pulumi.Input<String>? instanceType;
  /// The association mode. Valid values:
  /// - `NAT` (default): NAT mode
  /// - `MULTI_BINDED`: multi-EIP-to-ENI mode
  /// - `BINDED`: cut-network interface controller mode
  ///
  /// > **NOTE:**   This parameter is required only when `instance_type` is set to `NetworkInterface`.
  final pulumi.Input<String>? mode;
  /// The IP address in the CIDR block of the vSwitch.
  ///
  /// If you leave this parameter empty, the system allocates a private IP address based on the VPC ID and vSwitch ID.
  ///
  /// > **NOTE:**   This parameter is required if `instance_type` is set to `IpAddress`, which indicates that the EIP is to be associated with an IP address.
  final pulumi.Input<String>? privateIpAddress;
  /// The ID of the VPC in which an IPv4 gateway is created. The VPC and the EIP must be in the same region.
  ///
  /// When you associate an EIP with an IP address, the system can enable the IP address to access the Internet based on VPC route configurations.
  ///
  /// > **NOTE:**   This parameter is required if `instance_type` is set to `IpAddress`, which indicates that the EIP is to be associated with an IP address.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [EipAssociationArgs].
  /// [allocationId] The ID of the EIP instance.
  /// [force] Specifies whether to disassociate the EIP from a NAT gateway if a DNAT or SNAT entry is added to the NAT gateway. Valid values:
  /// [instanceId] The ID of the instance with which you want to associate the EIP. You can enter the ID of a NAT gateway, CLB instance, ECS instance, secondary ENI, HAVIP, or IP address.
  /// [instanceType] The type of the instance with which you want to associate the EIP. Valid values:
  /// [mode] The association mode. Valid values:
  /// [privateIpAddress] The IP address in the CIDR block of the vSwitch.
  /// [vpcId] The ID of the VPC in which an IPv4 gateway is created. The VPC and the EIP must be in the same region.
  EipAssociationArgs({
    required this.allocationId,
    this.force,
    required this.instanceId,
    this.instanceType,
    this.mode,
    this.privateIpAddress,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': allocationId,
      'force': ?force,
      'instanceId': instanceId,
      'instanceType': ?instanceType,
      'mode': ?mode,
      'privateIpAddress': ?privateIpAddress,
      'vpcId': ?vpcId,
    };
  }

  factory EipAssociationArgs.fromMap(Map<String, dynamic> map) {
    return EipAssociationArgs(
      allocationId: (map['allocationId'] as String).input(),
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

