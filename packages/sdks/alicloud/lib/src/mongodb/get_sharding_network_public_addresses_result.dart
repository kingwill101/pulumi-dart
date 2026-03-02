// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sharding_network_public_addresses_address.dart';

/// Result data returned by getShardingNetworkPublicAddresses.
class GetShardingNetworkPublicAddressesResult {
  final List<GetShardingNetworkPublicAddressesAddress> addresses;
  final String dbInstanceId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? nodeId;
  final String? outputFile;
  final String? role;

  /// Creates a new [GetShardingNetworkPublicAddressesResult].
  /// [addresses] Required.
  /// [dbInstanceId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nodeId] Optional.
  /// [outputFile] Optional.
  /// [role] Optional.
  GetShardingNetworkPublicAddressesResult({
    required this.addresses,
    required this.dbInstanceId,
    required this.id,
    this.nodeId,
    this.outputFile,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': pulumi.Input.encodeList<GetShardingNetworkPublicAddressesAddress, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'dbInstanceId': dbInstanceId,
      'id': id,
      'nodeId': ?nodeId,
      'outputFile': ?outputFile,
      'role': ?role,
    };
  }

  factory GetShardingNetworkPublicAddressesResult.fromMap(Map<String, dynamic> map) {
    return GetShardingNetworkPublicAddressesResult(
      addresses: pulumi.Input.decodeList<GetShardingNetworkPublicAddressesAddress>(map['addresses'], (value) => GetShardingNetworkPublicAddressesAddress.fromMap((value as Map).cast<String, dynamic>())),
      dbInstanceId: map['dbInstanceId'] as String,
      id: map['id'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      role: map['role'] == null ? null : map['role']! as String,
    );
  }
}

