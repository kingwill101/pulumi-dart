// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_cen_local_vpc.dart';

/// Input properties used for looking up and filtering FirewallVpcFirewallCen resources.
class FirewallVpcFirewallCenState {
  /// The ID of the CEN instance.
  final pulumi.Input<String>? cenId;
  /// Intercommunication type, value: expressconnect: Express Channel cen: Cloud Enterprise Network
  final pulumi.Input<String>? connectType;
  /// The language type of the requested and received messages. Valid values:
  final pulumi.Input<String>? lang;
  /// The details of the VPC. See `local_vpc` below.
  final pulumi.Input<FirewallVpcFirewallCenLocalVpc>? localVpc;
  /// The UID of the member account (other Alibaba Cloud account) of the current Alibaba cloud account.
  final pulumi.Input<String>? memberUid;
  /// Firewall switch status.
  final pulumi.Input<String>? status;
  /// VPC firewall ID
  final pulumi.Input<String>? vpcFirewallId;
  /// The name of the VPC firewall instance.
  final pulumi.Input<String>? vpcFirewallName;
  /// The ID of the region to which the VPC is created.
  final pulumi.Input<String>? vpcRegion;

  /// Creates a new [FirewallVpcFirewallCenState].
  /// [cenId] The ID of the CEN instance.
  /// [connectType] Intercommunication type, value: expressconnect: Express Channel cen: Cloud Enterprise Network
  /// [lang] The language type of the requested and received messages. Valid values:
  /// [localVpc] The details of the VPC. See `local_vpc` below.
  /// [memberUid] The UID of the member account (other Alibaba Cloud account) of the current Alibaba cloud account.
  /// [status] Firewall switch status.
  /// [vpcFirewallId] VPC firewall ID
  /// [vpcFirewallName] The name of the VPC firewall instance.
  /// [vpcRegion] The ID of the region to which the VPC is created.
  FirewallVpcFirewallCenState({
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? connectType,
    pulumi.Output<String>? lang,
    pulumi.Output<FirewallVpcFirewallCenLocalVpc>? localVpc,
    pulumi.Output<String>? memberUid,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcFirewallId,
    pulumi.Output<String>? vpcFirewallName,
    pulumi.Output<String>? vpcRegion,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      connectType = pulumi.Input.asOptionalInput<String>(connectType),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      localVpc = pulumi.Input.asOptionalInput<FirewallVpcFirewallCenLocalVpc>(localVpc),
      memberUid = pulumi.Input.asOptionalInput<String>(memberUid),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcFirewallId = pulumi.Input.asOptionalInput<String>(vpcFirewallId),
      vpcFirewallName = pulumi.Input.asOptionalInput<String>(vpcFirewallName),
      vpcRegion = pulumi.Input.asOptionalInput<String>(vpcRegion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'connectType': ?connectType,
      'lang': ?lang,
      'localVpc': ?pulumi.Input.mapOptionalInputValue<FirewallVpcFirewallCenLocalVpc, Map<String, dynamic>>(localVpc, (value) => value.toMap()),
      'memberUid': ?memberUid,
      'status': ?status,
      'vpcFirewallId': ?vpcFirewallId,
      'vpcFirewallName': ?vpcFirewallName,
      'vpcRegion': ?vpcRegion,
    };
  }

  factory FirewallVpcFirewallCenState.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallCenState(
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      connectType: map['connectType'] == null ? null : pulumi.Output.create<String>(map['connectType'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      localVpc: map['localVpc'] == null ? null : pulumi.Output.create<FirewallVpcFirewallCenLocalVpc>(FirewallVpcFirewallCenLocalVpc.fromMap((map['localVpc'] as Map).cast<String, dynamic>())),
      memberUid: map['memberUid'] == null ? null : pulumi.Output.create<String>(map['memberUid'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcFirewallId: map['vpcFirewallId'] == null ? null : pulumi.Output.create<String>(map['vpcFirewallId'] as String),
      vpcFirewallName: map['vpcFirewallName'] == null ? null : pulumi.Output.create<String>(map['vpcFirewallName'] as String),
      vpcRegion: map['vpcRegion'] == null ? null : pulumi.Output.create<String>(map['vpcRegion'] as String),
    );
  }
}

