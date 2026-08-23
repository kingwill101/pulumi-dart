// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_list_cluster_language_extensions_args_doc}
/// Arguments for listClusterLanguageExtensions.
/// {@endtemplate}
/// {@macro pulumi_kusto_list_cluster_language_extensions_args_doc}
class ListClusterLanguageExtensionsArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListClusterLanguageExtensionsArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListClusterLanguageExtensionsArgs({
    required this.clusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListClusterLanguageExtensionsArgs.fromMap(Map<String, dynamic> map) {
    return ListClusterLanguageExtensionsArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
