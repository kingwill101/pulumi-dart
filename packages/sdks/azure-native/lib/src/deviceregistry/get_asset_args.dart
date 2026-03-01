// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_asset_args_doc}
/// Arguments for getAsset.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_asset_args_doc}
class GetAssetArgs {
  /// Asset name parameter.
  final pulumi.Input<String> assetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAssetArgs].
  /// [assetName] Asset name parameter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAssetArgs({
    required pulumi.Output<String> assetName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      assetName = pulumi.Input.asInput<String>(assetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetName': assetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAssetArgs.fromMap(Map<String, dynamic> map) {
    return GetAssetArgs(
      assetName: pulumi.Output.create<String>(map['assetName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

