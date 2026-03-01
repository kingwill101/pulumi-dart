// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_cen_local_vpc_eni_list.dart';
import 'firewall_vpc_firewall_cen_local_vpc_vpc_cidr_table_list.dart';

class FirewallVpcFirewallCenLocalVpc {
  /// The connection ID of the network instance.
  final String? attachmentId;
  /// The connection name of the network instance.
  final String? attachmentName;
  /// The list of network segments protected by the VPC firewall.
  final List<String>? defendCidrLists;
  /// List of elastic network cards.
  final List<FirewallVpcFirewallCenLocalVpcEniList>? eniLists;
  /// The ID of the vSwitch specified when the routing mode is manual mode.
  final String? manualVswitchId;
  /// The ID of the VPC instance that created the VPC firewall.
  final String networkInstanceId;
  /// The name of the network instance.
  final String? networkInstanceName;
  /// The type of the network instance. Value: **VPC * *.
  final String? networkInstanceType;
  /// The UID of the Alibaba Cloud account to which the VPC belongs.
  final String? ownerId;
  /// The region ID of the VPC.
  final String? regionNo;
  /// Routing mode,. Value:-auto: indicates automatic mode.-manual: indicates manual mode.
  final String? routeMode;
  /// Whether routing mode supports manual mode. Value:-**1**: Supported.-**0**: Not supported.
  final String? supportManualMode;
  /// The ID of the CEN-TR instance.
  final String? transitRouterId;
  /// The version of the cloud enterprise network forwarding router (CEN-TR). Value:-**Basic**: Basic Edition.-**Enterprise**: Enterprise Edition.
  final String? transitRouterType;
  /// The VPC network segment list.
  final List<FirewallVpcFirewallCenLocalVpcVpcCidrTableList>? vpcCidrTableLists;
  /// The ID of the VPC instance.
  final String? vpcId;
  /// The instance name of the VPC.
  final String? vpcName;

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
      'eniLists': ?eniLists == null ? null : pulumi.Input.encodeList<FirewallVpcFirewallCenLocalVpcEniList, Map<String, dynamic>>(eniLists!, (value) => value.toMap()),
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
      'vpcCidrTableLists': ?vpcCidrTableLists == null ? null : pulumi.Input.encodeList<FirewallVpcFirewallCenLocalVpcVpcCidrTableList, Map<String, dynamic>>(vpcCidrTableLists!, (value) => value.toMap()),
      'vpcId': ?vpcId,
      'vpcName': ?vpcName,
    };
  }

  factory FirewallVpcFirewallCenLocalVpc.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallCenLocalVpc(
      attachmentId: map['attachmentId'] == null ? null : map['attachmentId'] as String,
      attachmentName: map['attachmentName'] == null ? null : map['attachmentName'] as String,
      defendCidrLists: map['defendCidrLists'] == null ? null : (map['defendCidrLists'] as List).cast<String>(),
      eniLists: map['eniLists'] == null ? null : pulumi.Input.decodeList<FirewallVpcFirewallCenLocalVpcEniList>(map['eniLists'], (value) => FirewallVpcFirewallCenLocalVpcEniList.fromMap((value as Map).cast<String, dynamic>())),
      manualVswitchId: map['manualVswitchId'] == null ? null : map['manualVswitchId'] as String,
      networkInstanceId: map['networkInstanceId'] as String,
      networkInstanceName: map['networkInstanceName'] == null ? null : map['networkInstanceName'] as String,
      networkInstanceType: map['networkInstanceType'] == null ? null : map['networkInstanceType'] as String,
      ownerId: map['ownerId'] == null ? null : map['ownerId'] as String,
      regionNo: map['regionNo'] == null ? null : map['regionNo'] as String,
      routeMode: map['routeMode'] == null ? null : map['routeMode'] as String,
      supportManualMode: map['supportManualMode'] == null ? null : map['supportManualMode'] as String,
      transitRouterId: map['transitRouterId'] == null ? null : map['transitRouterId'] as String,
      transitRouterType: map['transitRouterType'] == null ? null : map['transitRouterType'] as String,
      vpcCidrTableLists: map['vpcCidrTableLists'] == null ? null : pulumi.Input.decodeList<FirewallVpcFirewallCenLocalVpcVpcCidrTableList>(map['vpcCidrTableLists'], (value) => FirewallVpcFirewallCenLocalVpcVpcCidrTableList.fromMap((value as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vpcName: map['vpcName'] == null ? null : map['vpcName'] as String,
    );
  }
}

