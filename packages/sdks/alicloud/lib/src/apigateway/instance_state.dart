// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_to_connect_vpc_ip_block.dart';
import 'instance_zone_vswitch_security_group.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// (Available since v1.228.0) The CIDR blocks that can be accessed by the Vpc integration instance.
  final pulumi.Input<String>? connectCidrBlocks;

  /// Creation time.
  final pulumi.Input<String>? createTime;

  /// Indicates whether to delete the IP block that the VPC can access, conflict with `to_connect_vpc_ip_block`.
  final pulumi.Input<String>? deleteVpcIpBlock;

  /// The time of the instance package. Valid values:
  /// - PricingCycle is **Month**, indicating monthly payment. The value range is **1** to **9**.
  /// - PricingCycle is **Year**, indicating annual payment. The value range is **1** to **3**.
  ///
  /// When the value of&gt; ChargeType is **PrePaid**, this parameter is available and must be passed in.
  final pulumi.Input<int>? duration;

  /// Specifies whether IPv6 egress capability is enabled.
  final pulumi.Input<bool>? egressIpv6Enable;

  /// Https policy.
  final pulumi.Input<String>? httpsPolicy;

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
  final pulumi.Input<String>? instanceName;

  /// Instance spec.
  final pulumi.Input<String>? instanceSpec;

  /// The type of the instance. Valid values are:
  final pulumi.Input<String>? instanceType;

  /// Specifies whether IPv6 ingress capability is enabled.
  final pulumi.Input<bool>? ipv6Enabled;

  /// The payment type of the resource.
  final pulumi.Input<String>? paymentType;

  /// The subscription instance is of the subscription year or month type. This parameter is required when the Payment type is PrePaid. The value range is as follows:
  final pulumi.Input<String>? pricingCycle;

  /// Specifies whether to skip the WAIT_SWITCH status of instance when modifying instance spec. Works only when instance spec change.
  final pulumi.Input<bool>? skipWaitSwitch;

  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Does ipv6 support.
  final pulumi.Input<bool>? supportIpv6;

  /// The additional IP block that the VPC integration instance can access, conflict with `delete_vpc_ip_block`. See `to_connect_vpc_ip_block` below.
  final pulumi.Input<InstanceToConnectVpcIpBlock>? toConnectVpcIpBlock;

  /// User's VpcID.
  final pulumi.Input<String>? userVpcId;

  /// Whether the slb of the Vpc supports.
  final pulumi.Input<bool>? vpcSlbIntranetEnable;

  /// The zone where the instance is deployed.
  final pulumi.Input<String>? zoneId;

  /// Network configuration details for Vpc integration instance which includes the availability zone, VSwitch, and security group information. See `zone_vswitch_security_group` below.
  final pulumi.Input<List<InstanceZoneVswitchSecurityGroup>>?
  zoneVswitchSecurityGroups;

  /// Creates a new [InstanceState].
  /// [connectCidrBlocks] (Available since v1.228.0) The CIDR blocks that can be accessed by the Vpc integration instance.
  /// [createTime] Creation time.
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
  /// [status] The status of the resource.
  /// [supportIpv6] Does ipv6 support.
  /// [toConnectVpcIpBlock] The additional IP block that the VPC integration instance can access, conflict with `delete_vpc_ip_block`. See `to_connect_vpc_ip_block` below.
  /// [userVpcId] User's VpcID.
  /// [vpcSlbIntranetEnable] Whether the slb of the Vpc supports.
  /// [zoneId] The zone where the instance is deployed.
  /// [zoneVswitchSecurityGroups] Network configuration details for Vpc integration instance which includes the availability zone, VSwitch, and security group information. See `zone_vswitch_security_group` below.
  InstanceState({
    this.connectCidrBlocks,
    this.createTime,
    this.deleteVpcIpBlock,
    this.duration,
    this.egressIpv6Enable,
    this.httpsPolicy,
    this.ingressVpcId,
    this.ingressVpcOwnerId,
    this.ingressVswitchId,
    this.instanceCidr,
    this.instanceName,
    this.instanceSpec,
    this.instanceType,
    this.ipv6Enabled,
    this.paymentType,
    this.pricingCycle,
    this.skipWaitSwitch,
    this.status,
    this.supportIpv6,
    this.toConnectVpcIpBlock,
    this.userVpcId,
    this.vpcSlbIntranetEnable,
    this.zoneId,
    this.zoneVswitchSecurityGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectCidrBlocks': ?connectCidrBlocks,
      'createTime': ?createTime,
      'deleteVpcIpBlock': ?deleteVpcIpBlock,
      'duration': ?duration,
      'egressIpv6Enable': ?egressIpv6Enable,
      'httpsPolicy': ?httpsPolicy,
      'ingressVpcId': ?ingressVpcId,
      'ingressVpcOwnerId': ?ingressVpcOwnerId,
      'ingressVswitchId': ?ingressVswitchId,
      'instanceCidr': ?instanceCidr,
      'instanceName': ?instanceName,
      'instanceSpec': ?instanceSpec,
      'instanceType': ?instanceType,
      'ipv6Enabled': ?ipv6Enabled,
      'paymentType': ?paymentType,
      'pricingCycle': ?pricingCycle,
      'skipWaitSwitch': ?skipWaitSwitch,
      'status': ?status,
      'supportIpv6': ?supportIpv6,
      'toConnectVpcIpBlock':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceToConnectVpcIpBlock,
            Map<String, dynamic>
          >(toConnectVpcIpBlock, (value) => value.toMap()),
      'userVpcId': ?userVpcId,
      'vpcSlbIntranetEnable': ?vpcSlbIntranetEnable,
      'zoneId': ?zoneId,
      'zoneVswitchSecurityGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceZoneVswitchSecurityGroup>,
            List<Map<String, dynamic>>
          >(
            zoneVswitchSecurityGroups,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceZoneVswitchSecurityGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      connectCidrBlocks: (() {
        final guardedValue = map['connectCidrBlocks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deleteVpcIpBlock: (() {
        final guardedValue = map['deleteVpcIpBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      duration: (() {
        final guardedValue = map['duration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      egressIpv6Enable: (() {
        final guardedValue = map['egressIpv6Enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpsPolicy: (() {
        final guardedValue = map['httpsPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ingressVpcId: (() {
        final guardedValue = map['ingressVpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ingressVpcOwnerId: (() {
        final guardedValue = map['ingressVpcOwnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ingressVswitchId: (() {
        final guardedValue = map['ingressVswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceCidr: (() {
        final guardedValue = map['instanceCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceSpec: (() {
        final guardedValue = map['instanceSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6Enabled: (() {
        final guardedValue = map['ipv6Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pricingCycle: (() {
        final guardedValue = map['pricingCycle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skipWaitSwitch: (() {
        final guardedValue = map['skipWaitSwitch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      supportIpv6: (() {
        final guardedValue = map['supportIpv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      toConnectVpcIpBlock: (() {
        final guardedValue = map['toConnectVpcIpBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceToConnectVpcIpBlock.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      userVpcId: (() {
        final guardedValue = map['userVpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcSlbIntranetEnable: (() {
        final guardedValue = map['vpcSlbIntranetEnable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneVswitchSecurityGroups: (() {
        final guardedValue = map['zoneVswitchSecurityGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceZoneVswitchSecurityGroup>(
            guardedValue,
            (value) => InstanceZoneVswitchSecurityGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
