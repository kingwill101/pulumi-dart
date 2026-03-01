// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipv6_gateways_gateway.dart';

/// Result data returned by getIpv6Gateways.
class GetIpv6GatewaysResult {
  final List<GetIpv6GatewaysGateway> gateways;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? ipv6GatewayName;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;
  final String? vpcId;

  /// Creates a new [GetIpv6GatewaysResult].
  /// [gateways] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [ipv6GatewayName] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [vpcId] Optional.
  GetIpv6GatewaysResult({
    required this.gateways,
    required this.id,
    required this.ids,
    this.ipv6GatewayName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateways': pulumi.Input.encodeList<GetIpv6GatewaysGateway, Map<String, dynamic>>(gateways, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'ipv6GatewayName': ?ipv6GatewayName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetIpv6GatewaysResult.fromMap(Map<String, dynamic> map) {
    return GetIpv6GatewaysResult(
      gateways: pulumi.Input.decodeList<GetIpv6GatewaysGateway>(map['gateways'], (value) => GetIpv6GatewaysGateway.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipv6GatewayName: map['ipv6GatewayName'] == null ? null : map['ipv6GatewayName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

