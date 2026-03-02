// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_local_vpc.dart';
import 'firewall_vpc_firewall_peer_vpc.dart';

/// Input properties used for looking up and filtering FirewallVpcFirewall resources.
class FirewallVpcFirewallState {
  /// Bandwidth specifications for high-speed channels. Unit: Mbps.
  final pulumi.Input<int>? bandwidth;
  /// The communication type of the VPC firewall.
  final pulumi.Input<String>? connectType;
  /// The language type of the requested and received messages. Valid values:
  final pulumi.Input<String>? lang;
  /// The details of the local VPC. See `local_vpc` below.
  final pulumi.Input<FirewallVpcFirewallLocalVpc>? localVpc;
  /// The UID of the Alibaba Cloud member account.
  final pulumi.Input<String>? memberUid;
  /// The details of the peer VPC. See `peer_vpc` below.
  final pulumi.Input<FirewallVpcFirewallPeerVpc>? peerVpc;
  /// The region is open.
  final pulumi.Input<String>? regionStatus;
  /// The status of the resource. Valid values:
  final pulumi.Input<String>? status;
  /// The ID of the VPC firewall instance.
  final pulumi.Input<String>? vpcFirewallId;
  /// The name of the VPC firewall instance.
  final pulumi.Input<String>? vpcFirewallName;

  /// Creates a new [FirewallVpcFirewallState].
  /// [bandwidth] Bandwidth specifications for high-speed channels. Unit: Mbps.
  /// [connectType] The communication type of the VPC firewall.
  /// [lang] The language type of the requested and received messages. Valid values:
  /// [localVpc] The details of the local VPC. See `local_vpc` below.
  /// [memberUid] The UID of the Alibaba Cloud member account.
  /// [peerVpc] The details of the peer VPC. See `peer_vpc` below.
  /// [regionStatus] The region is open.
  /// [status] The status of the resource. Valid values:
  /// [vpcFirewallId] The ID of the VPC firewall instance.
  /// [vpcFirewallName] The name of the VPC firewall instance.
  FirewallVpcFirewallState({
    this.bandwidth,
    this.connectType,
    this.lang,
    this.localVpc,
    this.memberUid,
    this.peerVpc,
    this.regionStatus,
    this.status,
    this.vpcFirewallId,
    this.vpcFirewallName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'connectType': ?connectType,
      'lang': ?lang,
      'localVpc': ?pulumi.Input.mapOptionalInputValue<FirewallVpcFirewallLocalVpc, Map<String, dynamic>>(localVpc, (value) => value.toMap()),
      'memberUid': ?memberUid,
      'peerVpc': ?pulumi.Input.mapOptionalInputValue<FirewallVpcFirewallPeerVpc, Map<String, dynamic>>(peerVpc, (value) => value.toMap()),
      'regionStatus': ?regionStatus,
      'status': ?status,
      'vpcFirewallId': ?vpcFirewallId,
      'vpcFirewallName': ?vpcFirewallName,
    };
  }

  factory FirewallVpcFirewallState.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallState(
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth'] as int).input(),
      connectType: map['connectType'] == null ? null : (map['connectType'] as String).input(),
      lang: map['lang'] == null ? null : (map['lang'] as String).input(),
      localVpc: map['localVpc'] == null ? null : (FirewallVpcFirewallLocalVpc.fromMap((map['localVpc'] as Map).cast<String, dynamic>())).input(),
      memberUid: map['memberUid'] == null ? null : (map['memberUid'] as String).input(),
      peerVpc: map['peerVpc'] == null ? null : (FirewallVpcFirewallPeerVpc.fromMap((map['peerVpc'] as Map).cast<String, dynamic>())).input(),
      regionStatus: map['regionStatus'] == null ? null : (map['regionStatus'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcFirewallId: map['vpcFirewallId'] == null ? null : (map['vpcFirewallId'] as String).input(),
      vpcFirewallName: map['vpcFirewallName'] == null ? null : (map['vpcFirewallName'] as String).input(),
    );
  }
}

