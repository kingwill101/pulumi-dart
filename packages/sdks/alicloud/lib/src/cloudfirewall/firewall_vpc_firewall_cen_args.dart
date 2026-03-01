// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_cen_local_vpc.dart';

/// {@template pulumi_cloudfirewall_firewall_vpc_firewall_cen_firewall_vpc_firewall_cen_args_doc}
/// The set of arguments for FirewallVpcFirewallCen.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_firewall_vpc_firewall_cen_firewall_vpc_firewall_cen_args_doc}
class FirewallVpcFirewallCenArgs {
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The language type of the requested and received messages. Valid values:
  final pulumi.Input<String>? lang;
  /// The details of the VPC. See `local_vpc` below.
  final pulumi.Input<FirewallVpcFirewallCenLocalVpc> localVpc;
  /// The UID of the member account (other Alibaba Cloud account) of the current Alibaba cloud account.
  final pulumi.Input<String>? memberUid;
  /// Firewall switch status.
  final pulumi.Input<String> status;
  /// The name of the VPC firewall instance.
  final pulumi.Input<String> vpcFirewallName;
  /// The ID of the region to which the VPC is created.
  final pulumi.Input<String> vpcRegion;

  /// Creates a new [FirewallVpcFirewallCenArgs].
  /// [cenId] The ID of the CEN instance.
  /// [lang] The language type of the requested and received messages. Valid values:
  /// [localVpc] The details of the VPC. See `local_vpc` below.
  /// [memberUid] The UID of the member account (other Alibaba Cloud account) of the current Alibaba cloud account.
  /// [status] Firewall switch status.
  /// [vpcFirewallName] The name of the VPC firewall instance.
  /// [vpcRegion] The ID of the region to which the VPC is created.
  FirewallVpcFirewallCenArgs({
    required pulumi.Output<String> cenId,
    pulumi.Output<String>? lang,
    required pulumi.Output<FirewallVpcFirewallCenLocalVpc> localVpc,
    pulumi.Output<String>? memberUid,
    required pulumi.Output<String> status,
    required pulumi.Output<String> vpcFirewallName,
    required pulumi.Output<String> vpcRegion,
  }) :
      cenId = pulumi.Input.asInput<String>(cenId),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      localVpc = pulumi.Input.asInput<FirewallVpcFirewallCenLocalVpc>(localVpc),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      status = pulumi.Input.asInput<String>(status),
      vpcFirewallName = pulumi.Input.asInput<String>(vpcFirewallName),
      vpcRegion = pulumi.Input.asInput<String>(vpcRegion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'lang': ?lang,
      'localVpc': pulumi.Input.mapInputValue<FirewallVpcFirewallCenLocalVpc, Map<String, dynamic>>(localVpc, (value) => value.toMap()),
      'memberUid': ?memberUid,
      'status': status,
      'vpcFirewallName': vpcFirewallName,
      'vpcRegion': vpcRegion,
    };
  }

  factory FirewallVpcFirewallCenArgs.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallCenArgs(
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      localVpc: pulumi.Output.create<FirewallVpcFirewallCenLocalVpc>(FirewallVpcFirewallCenLocalVpc.fromMap((map['localVpc'] as Map).cast<String, dynamic>())),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<String>(map['memberUid'] as String),
      status: pulumi.Output.create<String>(map['status'] as String),
      vpcFirewallName: pulumi.Output.create<String>(map['vpcFirewallName'] as String),
      vpcRegion: pulumi.Output.create<String>(map['vpcRegion'] as String),
    );
  }
}

