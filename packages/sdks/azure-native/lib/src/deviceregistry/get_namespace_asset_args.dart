// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_namespace_asset_args_doc}
/// Arguments for getNamespaceAsset.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_namespace_asset_args_doc}
class GetNamespaceAssetArgs {
  /// The name of the asset.
  final pulumi.Input<String> assetName;
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNamespaceAssetArgs].
  /// [assetName] The name of the asset.
  /// [namespaceName] The name of the namespace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNamespaceAssetArgs({
    required this.assetName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetName': assetName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespaceAssetArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceAssetArgs(
      assetName: pulumi.Input.fromValue(map['assetName'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

