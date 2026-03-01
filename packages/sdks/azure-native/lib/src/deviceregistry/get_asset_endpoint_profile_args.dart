// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_asset_endpoint_profile_args_doc}
/// Arguments for getAssetEndpointProfile.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_asset_endpoint_profile_args_doc}
class GetAssetEndpointProfileArgs {
  /// Asset Endpoint Profile name parameter.
  final pulumi.Input<String> assetEndpointProfileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAssetEndpointProfileArgs].
  /// [assetEndpointProfileName] Asset Endpoint Profile name parameter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAssetEndpointProfileArgs({
    required pulumi.Output<String> assetEndpointProfileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      assetEndpointProfileName = pulumi.Input.asInput<String>(assetEndpointProfileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetEndpointProfileName': assetEndpointProfileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAssetEndpointProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetAssetEndpointProfileArgs(
      assetEndpointProfileName: pulumi.Output.create<String>(map['assetEndpointProfileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

