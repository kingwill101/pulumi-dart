// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipam_ipam_pool_cidrs_cidr.dart';

/// Result data returned by getIpamIpamPoolCidrs.
class GetIpamIpamPoolCidrsResult {
  /// The CIDR address segment to be preset.> currently, only IPv4 address segments are supported.
  final String? cidr;
  /// A list of Ipam Pool Cidr Entries. Each element contains the following attributes:
  final List<GetIpamIpamPoolCidrsCidr> cidrs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The ID of the IPAM pool instance.
  final String ipamPoolId;
  final String? outputFile;

  /// Creates a new [GetIpamIpamPoolCidrsResult].
  /// [cidr] The CIDR address segment to be preset.> currently, only IPv4 address segments are supported.
  /// [cidrs] A list of Ipam Pool Cidr Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipamPoolId] The ID of the IPAM pool instance.
  /// [outputFile] Optional.
  GetIpamIpamPoolCidrsResult({
    this.cidr,
    required this.cidrs,
    required this.id,
    required this.ipamPoolId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'cidrs': pulumi.Input.encodeList<GetIpamIpamPoolCidrsCidr, Map<String, dynamic>>(cidrs, (value) => value.toMap()),
      'id': id,
      'ipamPoolId': ipamPoolId,
      'outputFile': ?outputFile,
    };
  }

  factory GetIpamIpamPoolCidrsResult.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamPoolCidrsResult(
      cidr: map['cidr'] == null ? null : map['cidr']! as String,
      cidrs: pulumi.Input.decodeList<GetIpamIpamPoolCidrsCidr>(map['cidrs'], (value) => GetIpamIpamPoolCidrsCidr.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipamPoolId: map['ipamPoolId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

