// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_cen_local_vpc_eni_list.dart';
import 'firewall_vpc_firewall_cen_local_vpc_vpc_cidr_table_list.dart';

class FirewallVpcFirewallCenLocalVpc {
  /// The connection ID of the network instance.
  final pulumi.Input<String>? attachmentId;
  /// The connection name of the network instance.
  final pulumi.Input<String>? attachmentName;
  /// The list of network segments protected by the VPC firewall.
  final pulumi.Input<List<String>>? defendCidrLists;
  /// List of elastic network cards.
  final pulumi.Input<List<FirewallVpcFirewallCenLocalVpcEniList>>? eniLists;
  /// The ID of the vSwitch specified when the routing mode is manual mode.
  final pulumi.Input<String>? manualVswitchId;
  /// The ID of the VPC instance that created the VPC firewall.
  final pulumi.Input<String> networkInstanceId;
  /// The name of the network instance.
  final pulumi.Input<String>? networkInstanceName;
  /// The type of the network instance. Value: **VPC * *.
  final pulumi.Input<String>? networkInstanceType;
  /// The UID of the Alibaba Cloud account to which the VPC belongs.
  final pulumi.Input<String>? ownerId;
  /// The region ID of the VPC.
  final pulumi.Input<String>? regionNo;
  /// Routing mode,. Value:-auto: indicates automatic mode.-manual: indicates manual mode.
  final pulumi.Input<String>? routeMode;
  /// Whether routing mode supports manual mode. Value:-**1**: Supported.-**0**: Not supported.
  final pulumi.Input<String>? supportManualMode;
  /// The ID of the CEN-TR instance.
  final pulumi.Input<String>? transitRouterId;
  /// The version of the cloud enterprise network forwarding router (CEN-TR). Value:-**Basic**: Basic Edition.-**Enterprise**: Enterprise Edition.
  final pulumi.Input<String>? transitRouterType;
  /// The VPC network segment list.
  final pulumi.Input<List<FirewallVpcFirewallCenLocalVpcVpcCidrTableList>>? vpcCidrTableLists;
  /// The ID of the VPC instance.
  final pulumi.Input<String>? vpcId;
  /// The instance name of the VPC.
  final pulumi.Input<String>? vpcName;

  /// Creates a new [FirewallVpcFirewallCenLocalVpc].
  /// [attachmentId] The connection ID of the network instance.
  /// [attachmentName] The connection name of the network instance.
  /// [defendCidrLists] The list of network segments protected by the VPC firewall.
  /// [eniLists] List of elastic network cards.
  /// [manualVswitchId] The ID of the vSwitch specified when the routing mode is manual mode.
  /// [networkInstanceId] The ID of the VPC instance that created the VPC firewall.
  /// [networkInstanceName] The name of the network instance.
  /// [networkInstanceType] The type of the network instance. Value: **VPC * *.
  /// [ownerId] The UID of the Alibaba Cloud account to which the VPC belongs.
  /// [regionNo] The region ID of the VPC.
  /// [routeMode] Routing mode,. Value:-auto: indicates automatic mode.-manual: indicates manual mode.
  /// [supportManualMode] Whether routing mode supports manual mode. Value:-**1**: Supported.-**0**: Not supported.
  /// [transitRouterId] The ID of the CEN-TR instance.
  /// [transitRouterType] The version of the cloud enterprise network forwarding router (CEN-TR). Value:-**Basic**: Basic Edition.-**Enterprise**: Enterprise Edition.
  /// [vpcCidrTableLists] The VPC network segment list.
  /// [vpcId] The ID of the VPC instance.
  /// [vpcName] The instance name of the VPC.
  FirewallVpcFirewallCenLocalVpc({
    this.attachmentId,
    this.attachmentName,
    this.defendCidrLists,
    this.eniLists,
    this.manualVswitchId,
    required this.networkInstanceId,
    this.networkInstanceName,
    this.networkInstanceType,
    this.ownerId,
    this.regionNo,
    this.routeMode,
    this.supportManualMode,
    this.transitRouterId,
    this.transitRouterType,
    this.vpcCidrTableLists,
    this.vpcId,
    this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'attachmentName': ?attachmentName,
      'defendCidrLists': ?defendCidrLists,
      'eniLists': ?pulumi.Input.mapOptionalInputValue<List<FirewallVpcFirewallCenLocalVpcEniList>, List<Map<String, dynamic>>>(eniLists, (value) => pulumi.Input.encodeList<FirewallVpcFirewallCenLocalVpcEniList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manualVswitchId': ?manualVswitchId,
      'networkInstanceId': networkInstanceId,
      'networkInstanceName': ?networkInstanceName,
      'networkInstanceType': ?networkInstanceType,
      'ownerId': ?ownerId,
      'regionNo': ?regionNo,
      'routeMode': ?routeMode,
      'supportManualMode': ?supportManualMode,
      'transitRouterId': ?transitRouterId,
      'transitRouterType': ?transitRouterType,
      'vpcCidrTableLists': ?pulumi.Input.mapOptionalInputValue<List<FirewallVpcFirewallCenLocalVpcVpcCidrTableList>, List<Map<String, dynamic>>>(vpcCidrTableLists, (value) => pulumi.Input.encodeList<FirewallVpcFirewallCenLocalVpcVpcCidrTableList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': ?vpcId,
      'vpcName': ?vpcName,
    };
  }

  factory FirewallVpcFirewallCenLocalVpc.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallCenLocalVpc(
      attachmentId: (() { final guardedValue = map['attachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachmentName: (() { final guardedValue = map['attachmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defendCidrLists: (() { final guardedValue = map['defendCidrLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      eniLists: (() { final guardedValue = map['eniLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallVpcFirewallCenLocalVpcEniList>(guardedValue, (value) => FirewallVpcFirewallCenLocalVpcEniList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      manualVswitchId: (() { final guardedValue = map['manualVswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInstanceId: pulumi.Input.fromValue(map['networkInstanceId'] as String),
      networkInstanceName: (() { final guardedValue = map['networkInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInstanceType: (() { final guardedValue = map['networkInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionNo: (() { final guardedValue = map['regionNo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeMode: (() { final guardedValue = map['routeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportManualMode: (() { final guardedValue = map['supportManualMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterType: (() { final guardedValue = map['transitRouterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcCidrTableLists: (() { final guardedValue = map['vpcCidrTableLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallVpcFirewallCenLocalVpcVpcCidrTableList>(guardedValue, (value) => FirewallVpcFirewallCenLocalVpcVpcCidrTableList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcName: (() { final guardedValue = map['vpcName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

