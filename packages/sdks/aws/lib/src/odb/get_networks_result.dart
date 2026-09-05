// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_networks_odb_network.dart';

/// Result data returned by getNetworks.
class GetNetworksResult {
  /// List of odb networks returns basic information about odb networks.
  final List<GetNetworksOdbNetwork>? odbNetworks;
  final String? region;

  /// Creates a new [GetNetworksResult].
  /// [odbNetworks] List of odb networks returns basic information about odb networks.
  /// [region] Optional.
  const GetNetworksResult({
    this.odbNetworks,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'odbNetworks': ?(() { final guardedValue = odbNetworks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworksOdbNetwork, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetNetworksResult(
      odbNetworks: (() { final guardedValue = map['odbNetworks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworksOdbNetwork>(guardedValue, (value) => GetNetworksOdbNetwork.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
