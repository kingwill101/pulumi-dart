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
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? connectType,
    pulumi.Output<String>? lang,
    pulumi.Output<FirewallVpcFirewallLocalVpc>? localVpc,
    pulumi.Output<String>? memberUid,
    pulumi.Output<FirewallVpcFirewallPeerVpc>? peerVpc,
    pulumi.Output<String>? regionStatus,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcFirewallId,
    pulumi.Output<String>? vpcFirewallName,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      connectType = pulumi.Input.asOptionalInput<String>(connectType),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      localVpc = pulumi.Input.asOptionalInput<FirewallVpcFirewallLocalVpc>(localVpc),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      peerVpc = pulumi.Input.asOptionalInput<FirewallVpcFirewallPeerVpc>(peerVpc),
      regionStatus = pulumi.Input.asOptionalInput<String>(regionStatus),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcFirewallId = pulumi.Input.asOptionalInput<String>(vpcFirewallId),
      vpcFirewallName = pulumi.Input.asOptionalInput<String>(vpcFirewallName);

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
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      connectType: map['connectType'] == null ? null : pulumi.Output.create<String>(map['connectType'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      localVpc: map['localVpc'] == null ? null : pulumi.Output.create<FirewallVpcFirewallLocalVpc>(FirewallVpcFirewallLocalVpc.fromMap((map['localVpc'] as Map).cast<String, dynamic>())),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<String>(map['memberUid'] as String),
      peerVpc: map['peerVpc'] == null ? null : pulumi.Output.create<FirewallVpcFirewallPeerVpc>(FirewallVpcFirewallPeerVpc.fromMap((map['peerVpc'] as Map).cast<String, dynamic>())),
      regionStatus: map['regionStatus'] == null ? null : pulumi.Output.create<String>(map['regionStatus'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcFirewallId: map['vpcFirewallId'] == null ? null : pulumi.Output.create<String>(map['vpcFirewallId'] as String),
      vpcFirewallName: map['vpcFirewallName'] == null ? null : pulumi.Output.create<String>(map['vpcFirewallName'] as String),
    );
  }
}

