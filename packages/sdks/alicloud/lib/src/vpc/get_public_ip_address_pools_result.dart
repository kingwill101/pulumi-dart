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
      isp: (() { final guardedValue = map['isp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pools: pulumi.Input.decodeList<GetPublicIpAddressPoolsPool>(map['pools']!, (value) => GetPublicIpAddressPoolsPool.fromMap((value as Map).cast<String, dynamic>())),
      publicIpAddressPoolIds: (() { final guardedValue = map['publicIpAddressPoolIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      publicIpAddressPoolName: (() { final guardedValue = map['publicIpAddressPoolName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

