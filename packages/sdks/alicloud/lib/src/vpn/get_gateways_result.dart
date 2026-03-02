// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateways_gateway.dart';

/// Result data returned by getGateways.
class GetGatewaysResult {
  /// The business status of the VPN gateway.
  final String? businessStatus;
  /// Whether the ipsec function is enabled.
  final bool? enableIpsec;
  /// A list of VPN gateways. Each element contains the following attributes:
  final List<GetGatewaysGateway> gateways;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// IDs of the VPN.
  final List<String> ids;
  final bool? includeReservationData;
  final String? nameRegex;
  /// names of the VPN.
  final List<String> names;
  final String? outputFile;
  /// Whether the ssl function is enabled.
  final String? sslVpn;
  /// The status of the VPN
  final String? status;
  /// ID of the VPC that the VPN belongs.
  final String? vpcId;

  /// Creates a new [GetGatewaysResult].
  /// [businessStatus] The business status of the VPN gateway.
  /// [enableIpsec] Whether the ipsec function is enabled.
  /// [gateways] A list of VPN gateways. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of the VPN.
  /// [includeReservationData] Optional.
  /// [nameRegex] Optional.
  /// [names] names of the VPN.
  /// [outputFile] Optional.
  /// [sslVpn] Whether the ssl function is enabled.
  /// [status] The status of the VPN
  /// [vpcId] ID of the VPC that the VPN belongs.
  GetGatewaysResult({
    this.businessStatus,
    this.enableIpsec,
    required this.gateways,
    required this.id,
    required this.ids,
    this.includeReservationData,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.sslVpn,
    this.status,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessStatus': ?businessStatus,
      'enableIpsec': ?enableIpsec,
      'gateways': pulumi.Input.encodeList<GetGatewaysGateway, Map<String, dynamic>>(gateways, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'includeReservationData': ?includeReservationData,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'sslVpn': ?sslVpn,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetGatewaysResult.fromMap(Map<String, dynamic> map) {
    return GetGatewaysResult(
      businessStatus: map['businessStatus'] == null ? null : map['businessStatus']! as String,
      enableIpsec: map['enableIpsec'] == null ? null : map['enableIpsec']! as bool,
      gateways: pulumi.Input.decodeList<GetGatewaysGateway>(map['gateways'], (value) => GetGatewaysGateway.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeReservationData: map['includeReservationData'] == null ? null : map['includeReservationData']! as bool,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      sslVpn: map['sslVpn'] == null ? null : map['sslVpn']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as String,
    );
  }
}

