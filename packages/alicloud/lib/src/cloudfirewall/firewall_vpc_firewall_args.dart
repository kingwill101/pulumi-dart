// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_local_vpc.dart';
import 'firewall_vpc_firewall_peer_vpc.dart';

/// {@template pulumi_cloudfirewall_firewall_vpc_firewall_firewall_vpc_firewall_args_doc}
/// The set of arguments for FirewallVpcFirewall.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_firewall_vpc_firewall_firewall_vpc_firewall_args_doc}
class FirewallVpcFirewallArgs {
  /// The language type of the requested and received messages. Valid values:
  final pulumi.Input<String>? lang;
  /// The details of the local VPC. See `local_vpc` below.
  final pulumi.Input<FirewallVpcFirewallLocalVpc> localVpc;
  /// The UID of the Alibaba Cloud member account.
  final pulumi.Input<String>? memberUid;
  /// The details of the peer VPC. See `peer_vpc` below.
  final pulumi.Input<FirewallVpcFirewallPeerVpc> peerVpc;
  /// The status of the resource. Valid values:
  final pulumi.Input<String> status;
  /// The name of the VPC firewall instance.
  final pulumi.Input<String> vpcFirewallName;

  /// Creates a new [FirewallVpcFirewallArgs].
  /// [lang] The language type of the requested and received messages. Valid values:
  /// [localVpc] The details of the local VPC. See `local_vpc` below.
  /// [memberUid] The UID of the Alibaba Cloud member account.
  /// [peerVpc] The details of the peer VPC. See `peer_vpc` below.
  /// [status] The status of the resource. Valid values:
  /// [vpcFirewallName] The name of the VPC firewall instance.
  FirewallVpcFirewallArgs({
    String? lang,
    required FirewallVpcFirewallLocalVpc localVpc,
    String? memberUid,
    required FirewallVpcFirewallPeerVpc peerVpc,
    required String status,
    required String vpcFirewallName,
  }) :
      lang = pulumi.Input.asOptionalInput<String>(lang),
      localVpc = pulumi.Input.asInput<FirewallVpcFirewallLocalVpc>(localVpc),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      peerVpc = pulumi.Input.asInput<FirewallVpcFirewallPeerVpc>(peerVpc),
      status = pulumi.Input.asInput<String>(status),
      vpcFirewallName = pulumi.Input.asInput<String>(vpcFirewallName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lang': ?lang,
      'localVpc': pulumi.Input.mapInputValue<FirewallVpcFirewallLocalVpc, Map<String, dynamic>>(localVpc, (value) => value.toMap()),
      'memberUid': ?memberUid,
      'peerVpc': pulumi.Input.mapInputValue<FirewallVpcFirewallPeerVpc, Map<String, dynamic>>(peerVpc, (value) => value.toMap()),
      'status': status,
      'vpcFirewallName': vpcFirewallName,
    };
  }

  factory FirewallVpcFirewallArgs.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallArgs(
      lang: map['lang'] == null ? null : map['lang'] as String,
      localVpc: FirewallVpcFirewallLocalVpc.fromMap((map['localVpc'] as Map).cast<String, dynamic>()),
      memberUid: map['memberUid'] == null ? null : map['memberUid'] as String,
      peerVpc: FirewallVpcFirewallPeerVpc.fromMap((map['peerVpc'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      vpcFirewallName: map['vpcFirewallName'] as String,
    );
  }
}

