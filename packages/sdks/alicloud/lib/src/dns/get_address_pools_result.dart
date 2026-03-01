// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_pools_pool.dart';

/// Result data returned by getAddressPools.
class GetAddressPoolsResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetAddressPoolsPool> pools;

  /// Creates a new [GetAddressPoolsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pools] Required.
  GetAddressPoolsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.pools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pools': pulumi.Input.encodeList<GetAddressPoolsPool, Map<String, dynamic>>(pools, (value) => value.toMap()),
    };
  }

  factory GetAddressPoolsResult.fromMap(Map<String, dynamic> map) {
    return GetAddressPoolsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pools: pulumi.Input.decodeList<GetAddressPoolsPool>(map['pools'], (value) => GetAddressPoolsPool.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

