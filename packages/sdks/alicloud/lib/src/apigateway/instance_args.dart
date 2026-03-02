// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_to_connect_vpc_ip_block.dart';
import 'instance_zone_vswitch_security_group.dart';

/// {@template pulumi_apigateway_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_apigateway_instance_instance_args_doc}
class InstanceArgs {
  /// Indicates whether to delete the IP block that the VPC can access, conflict with `to_connect_vpc_ip_block`.
  final pulumi.Input<String>? deleteVpcIpBlock;
  /// The time of the instance package. Valid values:
  /// - PricingCycle is **Month**, indicating monthly payment. The value range is **1** to **9**.
  /// - PricingCycle is **Year**, indicating annual payment. The value range is **1** to **3**.
  ///
  /// When the value of> ChargeType is **PrePaid**, this parameter is available and must be passed in.
  final pulumi.Input<int>? duration;
  /// Specifies whether IPv6 egress capability is enabled.
  final pulumi.Input<bool>? egressIpv6Enable;
  /// Https policy.
  final pulumi.Input<String> httpsPolicy;
  /// The VpcID which the client at.
  final pulumi.Input<String>? ingressVpcId;
  /// The user ID that the VpcID of `ingress_vpc_id` belongs to.
  final pulumi.Input<String>? ingressVpcOwnerId;
  /// The VSwitch ID that belongs to the Vpc of `ingress_vpc_id`. Required when `ingress_vpc_id` is set.
  final pulumi.Input<String>? ingressVswitchId;
  /// The CIDR block for the instance deployment. Valid values are:
  /// - `192.168.0.0/16`.
  /// - `172.16.0.0/12`.
  final pulumi.Input<String>? instanceCidr;
  /// Instance name.
  final pulumi.Input<String> instanceName;
  /// Instance spec.
  final pulumi.Input<String> instanceSpec;
  /// The type of the instance. Valid values are:
  final pulumi.Input<String>? instanceType;
  /// Specifies whether IPv6 ingress capability is enabled.
  final pulumi.Input<bool>? ipv6Enabled;
  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;
  /// The subscription instance is of the subscription year or month type. This parameter is required when the Payment type is PrePaid. The value range is as follows:
  final pulumi.Input<String>? pricingCycle;
  /// Specifies whether to skip the WAIT_SWITCH status of instance when modifying instance spec. Works only when instance spec change.
  final pulumi.Input<bool>? skipWaitSwitch;
  /// The additional IP block that the VPC integration instance can access, conflict with `delete_vpc_ip_block`. See `to_connect_vpc_ip_block` below.
  final pulumi.Input<InstanceToConnectVpcIpBlock>? toConnectVpcIpBlock;
  /// User's VpcID.
  final pulumi.Input<String>? userVpcId;
  /// Whether the slb of the Vpc supports.
  final pulumi.Input<bool>? vpcSlbIntranetEnable;
  /// The zone where the instance is deployed.
  final pulumi.Input<String>? zoneId;
  /// Network configuration details for Vpc integration instance which includes the availability zone, VSwitch, and security group information. See `zone_vswitch_security_group` below.
  final pulumi.Input<List<InstanceZoneVswitchSecurityGroup>>? zoneVswitchSecurityGroups;

  /// Creates a new [InstanceArgs].
  /// [deleteVpcIpBlock] Indicates whether to delete the IP block that the VPC can access, conflict with `to_connect_vpc_ip_block`.
  /// [duration] The time of the instance package. Valid values:
  /// [egressIpv6Enable] Specifies whether IPv6 egress capability is enabled.
  /// [httpsPolicy] Https policy.
  /// [ingressVpcId] The VpcID which the client at.
  /// [ingressVpcOwnerId] The user ID that the VpcID of `ingress_vpc_id` belongs to.
  /// [ingressVswitchId] The VSwitch ID that belongs to the Vpc of `ingress_vpc_id`. Required when `ingress_vpc_id` is set.
  /// [instanceCidr] The CIDR block for the instance deployment. Valid values are:
  /// [instanceName] Instance name.
  /// [instanceSpec] Instance spec.
  /// [instanceType] The type of the instance. Valid values are:
  /// [ipv6Enabled] Specifies whether IPv6 ingress capability is enabled.
  /// [paymentType] The payment type of the resource.
  /// [pricingCycle] The subscription instance is of the subscription year or month type. This parameter is required when the Payment type is PrePaid. The value range is as follows:
  /// [skipWaitSwitch] Specifies whether to skip the WAIT_SWITCH status of instance when modifying instance spec. Works only when instance spec change.
  /// [toConnectVpcIpBlock] The additional IP block that the VPC integration instance can access, conflict with `delete_vpc_ip_block`. See `to_connect_vpc_ip_block` below.
  /// [userVpcId] User's VpcID.
  /// [vpcSlbIntranetEnable] Whether the slb of the Vpc supports.
  /// [zoneId] The zone where the instance is deployed.
  /// [zoneVswitchSecurityGroups] Network configuration details for Vpc integration instance which includes the availability zone, VSwitch, and security group information. See `zone_vswitch_security_group` below.
  InstanceArgs({
    this.deleteVpcIpBlock,
    this.duration,
    this.egressIpv6Enable,
    required this.httpsPolicy,
    this.ingressVpcId,
    this.ingressVpcOwnerId,
    this.ingressVswitchId,
    this.instanceCidr,
    required this.instanceName,
    required this.instanceSpec,
    this.instanceType,
    this.ipv6Enabled,
    required this.paymentType,
    this.pricingCycle,
    this.skipWaitSwitch,
    this.toConnectVpcIpBlock,
    this.userVpcId,
    this.vpcSlbIntranetEnable,
    this.zoneId,
    this.zoneVswitchSecurityGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteVpcIpBlock': ?deleteVpcIpBlock,
      'duration': ?duration,
      'egressIpv6Enable': ?egressIpv6Enable,
      'httpsPolicy': httpsPolicy,
      'ingressVpcId': ?ingressVpcId,
      'ingressVpcOwnerId': ?ingressVpcOwnerId,
      'ingressVswitchId': ?ingressVswitchId,
      'instanceCidr': ?instanceCidr,
      'instanceName': instanceName,
      'instanceSpec': instanceSpec,
      'instanceType': ?instanceType,
      'ipv6Enabled': ?ipv6Enabled,
      'paymentType': paymentType,
      'pricingCycle': ?pricingCycle,
      'skipWaitSwitch': ?skipWaitSwitch,
      'toConnectVpcIpBlock': ?pulumi.Input.mapOptionalInputValue<InstanceToConnectVpcIpBlock, Map<String, dynamic>>(toConnectVpcIpBlock, (value) => value.toMap()),
      'userVpcId': ?userVpcId,
      'vpcSlbIntranetEnable': ?vpcSlbIntranetEnable,
      'zoneId': ?zoneId,
      'zoneVswitchSecurityGroups': ?pulumi.Input.mapOptionalInputValue<List<InstanceZoneVswitchSecurityGroup>, List<Map<String, dynamic>>>(zoneVswitchSecurityGroups, (value) => pulumi.Input.encodeList<InstanceZoneVswitchSecurityGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      deleteVpcIpBlock: map['deleteVpcIpBlock'] == null ? null : (map['deleteVpcIpBlock']! as String).input(),
      duration: map['duration'] == null ? null : (map['duration']! as int).input(),
      egressIpv6Enable: map['egressIpv6Enable'] == null ? null : (map['egressIpv6Enable']! as bool).input(),
      httpsPolicy: (map['httpsPolicy'] as String).input(),
      ingressVpcId: map['ingressVpcId'] == null ? null : (map['ingressVpcId']! as String).input(),
      ingressVpcOwnerId: map['ingressVpcOwnerId'] == null ? null : (map['ingressVpcOwnerId']! as String).input(),
      ingressVswitchId: map['ingressVswitchId'] == null ? null : (map['ingressVswitchId']! as String).input(),
      instanceCidr: map['instanceCidr'] == null ? null : (map['instanceCidr']! as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      instanceSpec: (map['instanceSpec'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      ipv6Enabled: map['ipv6Enabled'] == null ? null : (map['ipv6Enabled']! as bool).input(),
      paymentType: (map['paymentType'] as String).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle']! as String).input(),
      skipWaitSwitch: map['skipWaitSwitch'] == null ? null : (map['skipWaitSwitch']! as bool).input(),
      toConnectVpcIpBlock: map['toConnectVpcIpBlock'] == null ? null : (InstanceToConnectVpcIpBlock.fromMap((map['toConnectVpcIpBlock']! as Map).cast<String, dynamic>())).input(),
      userVpcId: map['userVpcId'] == null ? null : (map['userVpcId']! as String).input(),
      vpcSlbIntranetEnable: map['vpcSlbIntranetEnable'] == null ? null : (map['vpcSlbIntranetEnable']! as bool).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
      zoneVswitchSecurityGroups: map['zoneVswitchSecurityGroups'] == null ? null : (pulumi.Input.decodeList<InstanceZoneVswitchSecurityGroup>(map['zoneVswitchSecurityGroups']!, (value) => InstanceZoneVswitchSecurityGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

