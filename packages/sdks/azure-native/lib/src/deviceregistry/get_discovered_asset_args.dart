// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_discovered_asset_args_doc}
/// Arguments for getDiscoveredAsset.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_discovered_asset_args_doc}
class GetDiscoveredAssetArgs {
  /// Discovered Asset name parameter.
  final pulumi.Input<String> discoveredAssetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiscoveredAssetArgs].
  /// [discoveredAssetName] Discovered Asset name parameter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDiscoveredAssetArgs({
    required this.discoveredAssetName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveredAssetName': discoveredAssetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiscoveredAssetArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredAssetArgs(
      discoveredAssetName: (map['discoveredAssetName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

