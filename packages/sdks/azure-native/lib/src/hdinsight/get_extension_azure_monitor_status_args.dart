// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hdinsight_get_extension_azure_monitor_status_args_doc}
/// Arguments for getExtensionAzureMonitorStatus.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_get_extension_azure_monitor_status_args_doc}
class GetExtensionAzureMonitorStatusArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExtensionAzureMonitorStatusArgs].
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group.
  GetExtensionAzureMonitorStatusArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExtensionAzureMonitorStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetExtensionAzureMonitorStatusArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

