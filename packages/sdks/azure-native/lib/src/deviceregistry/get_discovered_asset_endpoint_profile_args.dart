// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_discovered_asset_endpoint_profile_args_doc}
/// Arguments for getDiscoveredAssetEndpointProfile.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_discovered_asset_endpoint_profile_args_doc}
class GetDiscoveredAssetEndpointProfileArgs {
  /// Discovered Asset Endpoint Profile name parameter.
  final pulumi.Input<String> discoveredAssetEndpointProfileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiscoveredAssetEndpointProfileArgs].
  /// [discoveredAssetEndpointProfileName] Discovered Asset Endpoint Profile name parameter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDiscoveredAssetEndpointProfileArgs({
    required pulumi.Output<String> discoveredAssetEndpointProfileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      discoveredAssetEndpointProfileName = pulumi.Input.asInput<String>(discoveredAssetEndpointProfileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveredAssetEndpointProfileName': discoveredAssetEndpointProfileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiscoveredAssetEndpointProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredAssetEndpointProfileArgs(
      discoveredAssetEndpointProfileName: pulumi.Output.create<String>(map['discoveredAssetEndpointProfileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

