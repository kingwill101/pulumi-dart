// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hdinsight_get_cluster_gateway_settings_args_doc}
/// Arguments for getClusterGatewaySettings.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_get_cluster_gateway_settings_args_doc}
class GetClusterGatewaySettingsArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetClusterGatewaySettingsArgs].
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group.
  const GetClusterGatewaySettingsArgs({
    required this.clusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetClusterGatewaySettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterGatewaySettingsArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
