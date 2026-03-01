// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewalls_firewall_local_vpc.dart';
import 'get_vpc_firewalls_firewall_peer_vpc.dart';

class GetVpcFirewallsFirewall {
  /// Bandwidth specifications for high-speed channels. Unit: Mbps.
  final int bandwidth;
  /// The communication type of the VPC firewall. Valid value: **expressconnect**, which indicates Express Connect.
  final String connectType;
  /// The name of the VPC firewall instance and the value same as `vpc_firewall_id`.
  final String id;
  /// The details of the local VPC.
  final List<GetVpcFirewallsFirewallLocalVpc> localVpcs;
  /// The details of the peer VPC.
  final List<GetVpcFirewallsFirewallPeerVpc> peerVpcs;
  /// The region is open. Value:-**enable**: is enabled, indicating that VPC firewall can be configured in this region.-**disable**: indicates that VPC firewall cannot be configured in this region.
  final String regionStatus;
  /// The status of the resource
  final String status;
  /// The ID of the VPC firewall instance.
  final String vpcFirewallId;
  /// The name of the VPC firewall instance.
  final String vpcFirewallName;

  /// Creates a new [GetVpcFirewallsFirewall].
  /// [bandwidth] Bandwidth specifications for high-speed channels. Unit: Mbps.
  /// [connectType] The communication type of the VPC firewall. Valid value: **expressconnect**, which indicates Express Connect.
  /// [id] The name of the VPC firewall instance and the value same as `vpc_firewall_id`.
  /// [localVpcs] The details of the local VPC.
  /// [peerVpcs] The details of the peer VPC.
  /// [regionStatus] The region is open. Value:-**enable**: is enabled, indicating that VPC firewall can be configured in this region.-**disable**: indicates that VPC firewall cannot be configured in this region.
  /// [status] The status of the resource
  /// [vpcFirewallId] The ID of the VPC firewall instance.
  /// [vpcFirewallName] The name of the VPC firewall instance.
  GetVpcFirewallsFirewall({
    required this.bandwidth,
    required this.connectType,
    required this.id,
    required this.localVpcs,
    required this.peerVpcs,
    required this.regionStatus,
    required this.status,
    required this.vpcFirewallId,
    required this.vpcFirewallName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'connectType': connectType,
      'id': id,
      'localVpcs': pulumi.Input.encodeList<GetVpcFirewallsFirewallLocalVpc, Map<String, dynamic>>(localVpcs, (value) => value.toMap()),
      'peerVpcs': pulumi.Input.encodeList<GetVpcFirewallsFirewallPeerVpc, Map<String, dynamic>>(peerVpcs, (value) => value.toMap()),
      'regionStatus': regionStatus,
      'status': status,
      'vpcFirewallId': vpcFirewallId,
      'vpcFirewallName': vpcFirewallName,
    };
  }

  factory GetVpcFirewallsFirewall.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallsFirewall(
      bandwidth: map['bandwidth'] as int,
      connectType: map['connectType'] as String,
      id: map['id'] as String,
      localVpcs: pulumi.Input.decodeList<GetVpcFirewallsFirewallLocalVpc>(map['localVpcs'], (value) => GetVpcFirewallsFirewallLocalVpc.fromMap((value as Map).cast<String, dynamic>())),
      peerVpcs: pulumi.Input.decodeList<GetVpcFirewallsFirewallPeerVpc>(map['peerVpcs'], (value) => GetVpcFirewallsFirewallPeerVpc.fromMap((value as Map).cast<String, dynamic>())),
      regionStatus: map['regionStatus'] as String,
      status: map['status'] as String,
      vpcFirewallId: map['vpcFirewallId'] as String,
      vpcFirewallName: map['vpcFirewallName'] as String,
    );
  }
}

