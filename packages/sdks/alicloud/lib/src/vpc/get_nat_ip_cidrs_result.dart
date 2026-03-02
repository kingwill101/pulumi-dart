// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nat_ip_cidrs_cidr.dart';

/// Result data returned by getNatIpCidrs.
class GetNatIpCidrsResult {
  final List<GetNatIpCidrsCidr> cidrs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String natGatewayId;
  final List<String>? natIpCidrNames;
  final List<String>? natIpCidrs;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetNatIpCidrsResult].
  /// [cidrs] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [natGatewayId] Required.
  /// [natIpCidrNames] Optional.
  /// [natIpCidrs] Optional.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetNatIpCidrsResult({
    required this.cidrs,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    required this.natGatewayId,
    this.natIpCidrNames,
    this.natIpCidrs,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': pulumi.Input.encodeList<GetNatIpCidrsCidr, Map<String, dynamic>>(cidrs, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'natGatewayId': natGatewayId,
      'natIpCidrNames': ?natIpCidrNames,
      'natIpCidrs': ?natIpCidrs,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetNatIpCidrsResult.fromMap(Map<String, dynamic> map) {
    return GetNatIpCidrsResult(
      cidrs: pulumi.Input.decodeList<GetNatIpCidrsCidr>(map['cidrs'], (value) => GetNatIpCidrsCidr.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      natGatewayId: map['natGatewayId'] as String,
      natIpCidrNames: map['natIpCidrNames'] == null ? null : (map['natIpCidrNames']! as List).cast<String>(),
      natIpCidrs: map['natIpCidrs'] == null ? null : (map['natIpCidrs']! as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

