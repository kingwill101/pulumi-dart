// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipv4_gateways_gateway.dart';

/// Result data returned by getIpv4Gateways.
class GetIpv4GatewaysResult {
  final List<GetIpv4GatewaysGateway> gateways;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? ipv4GatewayName;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;
  final String? vpcId;

  /// Creates a new [GetIpv4GatewaysResult].
  /// [gateways] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [ipv4GatewayName] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [vpcId] Optional.
  GetIpv4GatewaysResult({
    required this.gateways,
    required this.id,
    required this.ids,
    this.ipv4GatewayName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateways':
          pulumi.Input.encodeList<GetIpv4GatewaysGateway, Map<String, dynamic>>(
            gateways,
            (value) => value.toMap(),
          ),
      'id': id,
      'ids': ids,
      'ipv4GatewayName': ?ipv4GatewayName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetIpv4GatewaysResult.fromMap(Map<String, dynamic> map) {
    return GetIpv4GatewaysResult(
      gateways: pulumi.Input.decodeList<GetIpv4GatewaysGateway>(
        map['gateways']!,
        (value) => GetIpv4GatewaysGateway.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipv4GatewayName: (() {
        final guardedValue = map['ipv4GatewayName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
