// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_ip_address_pools_pool.dart';

/// Result data returned by getPublicIpAddressPools.
class GetPublicIpAddressPoolsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? isp;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetPublicIpAddressPoolsPool> pools;
  final List<String>? publicIpAddressPoolIds;
  final String? publicIpAddressPoolName;
  final String? status;

  /// Creates a new [GetPublicIpAddressPoolsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [isp] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pools] Required.
  /// [publicIpAddressPoolIds] Optional.
  /// [publicIpAddressPoolName] Optional.
  /// [status] Optional.
  GetPublicIpAddressPoolsResult({
    required this.id,
    required this.ids,
    this.isp,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.pools,
    this.publicIpAddressPoolIds,
    this.publicIpAddressPoolName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'isp': ?isp,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pools': pulumi.Input.encodeList<GetPublicIpAddressPoolsPool, Map<String, dynamic>>(pools, (value) => value.toMap()),
      'publicIpAddressPoolIds': ?publicIpAddressPoolIds,
      'publicIpAddressPoolName': ?publicIpAddressPoolName,
      'status': ?status,
    };
  }

  factory GetPublicIpAddressPoolsResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIpAddressPoolsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      isp: map['isp'] == null ? null : map['isp'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pools: pulumi.Input.decodeList<GetPublicIpAddressPoolsPool>(map['pools'], (value) => GetPublicIpAddressPoolsPool.fromMap((value as Map).cast<String, dynamic>())),
      publicIpAddressPoolIds: map['publicIpAddressPoolIds'] == null ? null : (map['publicIpAddressPoolIds'] as List).cast<String>(),
      publicIpAddressPoolName: map['publicIpAddressPoolName'] == null ? null : map['publicIpAddressPoolName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

