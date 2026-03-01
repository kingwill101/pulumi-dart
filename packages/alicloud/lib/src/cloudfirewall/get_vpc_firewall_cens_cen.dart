// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewall_cens_cen_local_vpc.dart';

class GetVpcFirewallCensCen {
  /// The ID of the CEN instance.
  final String cenId;
  /// Intercommunication type, value: `expressconnect`: Express Channel `cen`: Cloud Enterprise Network
  final String connectType;
  /// The ID of the CEN instance.
  final String id;
  /// The details of the VPC.
  final List<GetVpcFirewallCensCenLocalVpc> localVpcs;
  /// The ID of the VPC instance that created the VPC firewall.
  final String networkInstanceId;
  /// Firewall switch status
  final String status;
  /// VPC firewall ID
  final String vpcFirewallId;
  /// The name of the VPC firewall instance.
  final String vpcFirewallName;

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
      'localVpcs': pulumi.Input.encodeList<GetVpcFirewallCensCenLocalVpc, Map<String, dynamic>>(localVpcs, (value) => value.toMap()),
      'networkInstanceId': networkInstanceId,
      'status': status,
      'vpcFirewallId': vpcFirewallId,
      'vpcFirewallName': vpcFirewallName,
    };
  }

  factory GetVpcFirewallCensCen.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallCensCen(
      cenId: map['cenId'] as String,
      connectType: map['connectType'] as String,
      id: map['id'] as String,
      localVpcs: pulumi.Input.decodeList<GetVpcFirewallCensCenLocalVpc>(map['localVpcs'], (value) => GetVpcFirewallCensCenLocalVpc.fromMap((value as Map).cast<String, dynamic>())),
      networkInstanceId: map['networkInstanceId'] as String,
      status: map['status'] as String,
      vpcFirewallId: map['vpcFirewallId'] as String,
      vpcFirewallName: map['vpcFirewallName'] as String,
    );
  }
}

