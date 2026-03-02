// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewall_cens_cen_local_vpc.dart';

class GetVpcFirewallCensCen {
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// Intercommunication type, value: `expressconnect`: Express Channel `cen`: Cloud Enterprise Network
  final pulumi.Input<String> connectType;
  /// The ID of the CEN instance.
  final pulumi.Input<String> id;
  /// The details of the VPC.
  final pulumi.Input<List<GetVpcFirewallCensCenLocalVpc>> localVpcs;
  /// The ID of the VPC instance that created the VPC firewall.
  final pulumi.Input<String> networkInstanceId;
  /// Firewall switch status
  final pulumi.Input<String> status;
  /// VPC firewall ID
  final pulumi.Input<String> vpcFirewallId;
  /// The name of the VPC firewall instance.
  final pulumi.Input<String> vpcFirewallName;

  /// Creates a new [GetVpcFirewallCensCen].
  /// [cenId] The ID of the CEN instance.
  /// [connectType] Intercommunication type, value: `expressconnect`: Express Channel `cen`: Cloud Enterprise Network
  /// [id] The ID of the CEN instance.
  /// [localVpcs] The details of the VPC.
  /// [networkInstanceId] The ID of the VPC instance that created the VPC firewall.
  /// [status] Firewall switch status
  /// [vpcFirewallId] VPC firewall ID
  /// [vpcFirewallName] The name of the VPC firewall instance.
  GetVpcFirewallCensCen({
    required this.cenId,
    required this.connectType,
    required this.id,
    required this.localVpcs,
    required this.networkInstanceId,
    required this.status,
    required this.vpcFirewallId,
    required this.vpcFirewallName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'connectType': connectType,
      'id': id,
      'localVpcs': pulumi.Input.mapInputValue<List<GetVpcFirewallCensCenLocalVpc>, List<Map<String, dynamic>>>(localVpcs, (value) => pulumi.Input.encodeList<GetVpcFirewallCensCenLocalVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkInstanceId': networkInstanceId,
      'status': status,
      'vpcFirewallId': vpcFirewallId,
      'vpcFirewallName': vpcFirewallName,
    };
  }

  factory GetVpcFirewallCensCen.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallCensCen(
      cenId: (map['cenId'] as String).input(),
      connectType: (map['connectType'] as String).input(),
      id: (map['id'] as String).input(),
      localVpcs: (pulumi.Input.decodeList<GetVpcFirewallCensCenLocalVpc>(map['localVpcs'], (value) => GetVpcFirewallCensCenLocalVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkInstanceId: (map['networkInstanceId'] as String).input(),
      status: (map['status'] as String).input(),
      vpcFirewallId: (map['vpcFirewallId'] as String).input(),
      vpcFirewallName: (map['vpcFirewallName'] as String).input(),
    );
  }
}

