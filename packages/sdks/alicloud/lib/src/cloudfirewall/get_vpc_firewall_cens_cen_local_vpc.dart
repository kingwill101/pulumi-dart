// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewall_cens_cen_local_vpc_eni_list.dart';
import 'get_vpc_firewall_cens_cen_local_vpc_vpc_cidr_table_list.dart';

class GetVpcFirewallCensCenLocalVpc {
  final pulumi.Input<String> attachmentId;
  final pulumi.Input<String> attachmentName;
  /// The list of network segments protected by the VPC firewall.
  final pulumi.Input<List<String>> defendCidrLists;
  final pulumi.Input<List<GetVpcFirewallCensCenLocalVpcEniList>> eniLists;
  final pulumi.Input<String> manualVswitchId;
  /// The ID of the VPC instance that created the VPC firewall.
  final pulumi.Input<String> networkInstanceId;
  /// The name of the network instance.
  final pulumi.Input<String> networkInstanceName;
  /// The type of the network instance. Value: **VPC * *.
  final pulumi.Input<String> networkInstanceType;
  /// The UID of the Alibaba Cloud account to which the VPC belongs.
  final pulumi.Input<String> ownerId;
  /// The region ID of the VPC.
  final pulumi.Input<String> regionNo;
  /// Routing mode,. Value:-auto: indicates automatic mode.-manual: indicates manual mode.
  final pulumi.Input<String> routeMode;
  /// Whether routing mode supports manual mode. Value:-**1**: Supported.-**0**: Not supported.
  final pulumi.Input<String> supportManualMode;
  final pulumi.Input<String> transitRouterId;
  /// The version of the cloud enterprise network forwarding router (CEN-TR). Value:-**Basic**: Basic Edition.-**Enterprise**: Enterprise Edition.
  final pulumi.Input<String> transitRouterType;
  /// The VPC network segment list.
  final pulumi.Input<List<GetVpcFirewallCensCenLocalVpcVpcCidrTableList>> vpcCidrTableLists;
  /// The ID of the VPC instance.
  final pulumi.Input<String> vpcId;
  /// The instance name of the VPC.
  final pulumi.Input<String> vpcName;

  /// Creates a new [GetVpcFirewallCensCenLocalVpc].
  /// [attachmentId] Required.
  /// [attachmentName] Required.
  /// [defendCidrLists] The list of network segments protected by the VPC firewall.
  /// [eniLists] Required.
  /// [manualVswitchId] Required.
  /// [networkInstanceId] The ID of the VPC instance that created the VPC firewall.
  /// [networkInstanceName] The name of the network instance.
  /// [networkInstanceType] The type of the network instance. Value: **VPC * *.
  /// [ownerId] The UID of the Alibaba Cloud account to which the VPC belongs.
  /// [regionNo] The region ID of the VPC.
  /// [routeMode] Routing mode,. Value:-auto: indicates automatic mode.-manual: indicates manual mode.
  /// [supportManualMode] Whether routing mode supports manual mode. Value:-**1**: Supported.-**0**: Not supported.
  /// [transitRouterId] Required.
  /// [transitRouterType] The version of the cloud enterprise network forwarding router (CEN-TR). Value:-**Basic**: Basic Edition.-**Enterprise**: Enterprise Edition.
  /// [vpcCidrTableLists] The VPC network segment list.
  /// [vpcId] The ID of the VPC instance.
  /// [vpcName] The instance name of the VPC.
  GetVpcFirewallCensCenLocalVpc({
    required this.attachmentId,
    required this.attachmentName,
    required this.defendCidrLists,
    required this.eniLists,
    required this.manualVswitchId,
    required this.networkInstanceId,
    required this.networkInstanceName,
    required this.networkInstanceType,
    required this.ownerId,
    required this.regionNo,
    required this.routeMode,
    required this.supportManualMode,
    required this.transitRouterId,
    required this.transitRouterType,
    required this.vpcCidrTableLists,
    required this.vpcId,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
      'attachmentName': attachmentName,
      'defendCidrLists': defendCidrLists,
      'eniLists': pulumi.Input.mapInputValue<List<GetVpcFirewallCensCenLocalVpcEniList>, List<Map<String, dynamic>>>(eniLists, (value) => pulumi.Input.encodeList<GetVpcFirewallCensCenLocalVpcEniList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manualVswitchId': manualVswitchId,
      'networkInstanceId': networkInstanceId,
      'networkInstanceName': networkInstanceName,
      'networkInstanceType': networkInstanceType,
      'ownerId': ownerId,
      'regionNo': regionNo,
      'routeMode': routeMode,
      'supportManualMode': supportManualMode,
      'transitRouterId': transitRouterId,
      'transitRouterType': transitRouterType,
      'vpcCidrTableLists': pulumi.Input.mapInputValue<List<GetVpcFirewallCensCenLocalVpcVpcCidrTableList>, List<Map<String, dynamic>>>(vpcCidrTableLists, (value) => pulumi.Input.encodeList<GetVpcFirewallCensCenLocalVpcVpcCidrTableList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': vpcId,
      'vpcName': vpcName,
    };
  }

  factory GetVpcFirewallCensCenLocalVpc.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallCensCenLocalVpc(
      attachmentId: (map['attachmentId'] as String).input(),
      attachmentName: (map['attachmentName'] as String).input(),
      defendCidrLists: ((map['defendCidrLists'] as List).cast<String>()).input(),
      eniLists: (pulumi.Input.decodeList<GetVpcFirewallCensCenLocalVpcEniList>(map['eniLists'], (value) => GetVpcFirewallCensCenLocalVpcEniList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      manualVswitchId: (map['manualVswitchId'] as String).input(),
      networkInstanceId: (map['networkInstanceId'] as String).input(),
      networkInstanceName: (map['networkInstanceName'] as String).input(),
      networkInstanceType: (map['networkInstanceType'] as String).input(),
      ownerId: (map['ownerId'] as String).input(),
      regionNo: (map['regionNo'] as String).input(),
      routeMode: (map['routeMode'] as String).input(),
      supportManualMode: (map['supportManualMode'] as String).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
      transitRouterType: (map['transitRouterType'] as String).input(),
      vpcCidrTableLists: (pulumi.Input.decodeList<GetVpcFirewallCensCenLocalVpcVpcCidrTableList>(map['vpcCidrTableLists'], (value) => GetVpcFirewallCensCenLocalVpcVpcCidrTableList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcId: (map['vpcId'] as String).input(),
      vpcName: (map['vpcName'] as String).input(),
    );
  }
}

