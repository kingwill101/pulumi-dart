// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_namespace_discovered_asset_args_doc}
/// Arguments for getNamespaceDiscoveredAsset.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_namespace_discovered_asset_args_doc}
class GetNamespaceDiscoveredAssetArgs {
  /// The name of the discovered asset.
  final pulumi.Input<String> discoveredAssetName;
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNamespaceDiscoveredAssetArgs].
  /// [discoveredAssetName] The name of the discovered asset.
  /// [namespaceName] The name of the namespace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNamespaceDiscoveredAssetArgs({
    required pulumi.Output<String> discoveredAssetName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      discoveredAssetName = pulumi.Input.asInput<String>(discoveredAssetName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveredAssetName': discoveredAssetName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespaceDiscoveredAssetArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceDiscoveredAssetArgs(
      discoveredAssetName: pulumi.Output.create<String>(map['discoveredAssetName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

