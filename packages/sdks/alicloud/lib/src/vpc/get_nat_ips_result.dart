// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nat_ips_ip.dart';

/// Result data returned by getNatIps.
class GetNatIpsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetNatIpsIp> ips;
  final String? nameRegex;
  final List<String> names;
  final String natGatewayId;
  final String? natIpCidr;
  final List<String>? natIpIds;
  final List<String>? natIpNames;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetNatIpsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [ips] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [natGatewayId] Required.
  /// [natIpCidr] Optional.
  /// [natIpIds] Optional.
  /// [natIpNames] Optional.
  /// [outputFile] Optional.
  /// [status] Optional.
  const GetNatIpsResult({
    required this.id,
    required this.ids,
    required this.ips,
    this.nameRegex,
    required this.names,
    required this.natGatewayId,
    this.natIpCidr,
    this.natIpIds,
    this.natIpNames,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'ips': pulumi.Input.encodeList<GetNatIpsIp, Map<String, dynamic>>(ips, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'natGatewayId': natGatewayId,
      'natIpCidr': ?natIpCidr,
      'natIpIds': ?natIpIds,
      'natIpNames': ?natIpNames,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetNatIpsResult.fromMap(Map<String, dynamic> map) {
    return GetNatIpsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ips: pulumi.Input.decodeList<GetNatIpsIp>(map['ips']!, (value) => GetNatIpsIp.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      natGatewayId: map['natGatewayId'] as String,
      natIpCidr: (() { final guardedValue = map['natIpCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      natIpIds: (() { final guardedValue = map['natIpIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      natIpNames: (() { final guardedValue = map['natIpNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

