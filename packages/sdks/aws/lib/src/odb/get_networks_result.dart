// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_networks_odb_network.dart';

/// Result data returned by getNetworks.
class GetNetworksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of odb networks returns basic information about odb networks.
  final List<GetNetworksOdbNetwork> odbNetworks;
  final String region;

  /// Creates a new [GetNetworksResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [odbNetworks] List of odb networks returns basic information about odb networks.
  /// [region] Required.
  GetNetworksResult({
    required this.id,
    required this.odbNetworks,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'odbNetworks':
          pulumi.Input.encodeList<GetNetworksOdbNetwork, Map<String, dynamic>>(
            odbNetworks,
            (value) => value.toMap(),
          ),
      'region': region,
    };
  }

  factory GetNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetNetworksResult(
      id: map['id'] as String,
      odbNetworks: pulumi.Input.decodeList<GetNetworksOdbNetwork>(
        map['odbNetworks']!,
        (value) => GetNetworksOdbNetwork.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      region: map['region'] as String,
    );
  }
}
