// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_networks_odb_network.dart';

/// Result data returned by getNetworks.
class GetNetworksResult {
  /// List of odb networks returns basic information about odb networks.
  final List<GetNetworksOdbNetwork> odbNetworks;
  final String region;

  /// Creates a new [GetNetworksResult].
  /// [odbNetworks] List of odb networks returns basic information about odb networks.
  /// [region] Required.
  const GetNetworksResult({
    required this.odbNetworks,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'odbNetworks': pulumi.Input.encodeList<GetNetworksOdbNetwork, Map<String, dynamic>>(odbNetworks, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetNetworksResult(
      odbNetworks: pulumi.Input.decodeList<GetNetworksOdbNetwork>(map['odbNetworks']!, (value) => GetNetworksOdbNetwork.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
