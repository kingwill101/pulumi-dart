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
    this.cenId,
    this.connectType,
    this.lang,
    this.localVpc,
    this.memberUid,
    this.status,
    this.vpcFirewallId,
    this.vpcFirewallName,
    this.vpcRegion,
  });

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
      cenId: map['cenId'] == null ? null : (map['cenId']! as String).input(),
      connectType: map['connectType'] == null ? null : (map['connectType']! as String).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      localVpc: map['localVpc'] == null ? null : (FirewallVpcFirewallCenLocalVpc.fromMap((map['localVpc']! as Map).cast<String, dynamic>())).input(),
      memberUid: map['memberUid'] == null ? null : (map['memberUid']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vpcFirewallId: map['vpcFirewallId'] == null ? null : (map['vpcFirewallId']! as String).input(),
      vpcFirewallName: map['vpcFirewallName'] == null ? null : (map['vpcFirewallName']! as String).input(),
      vpcRegion: map['vpcRegion'] == null ? null : (map['vpcRegion']! as String).input(),
    );
  }
}

