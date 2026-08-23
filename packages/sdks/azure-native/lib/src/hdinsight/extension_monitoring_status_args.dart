// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hdinsight_extension_monitoring_status_args_doc}
/// The set of arguments for ExtensionMonitoringStatus.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_extension_monitoring_status_args_doc}
class ExtensionMonitoringStatusArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The cluster monitor workspace key.
  final pulumi.Input<String>? primaryKey;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The cluster monitor workspace ID.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [ExtensionMonitoringStatusArgs].
  /// [clusterName] The name of the cluster.
  /// [primaryKey] The cluster monitor workspace key.
  /// [resourceGroupName] The name of the resource group.
  /// [workspaceId] The cluster monitor workspace ID.
  const ExtensionMonitoringStatusArgs({
    required this.clusterName,
    this.primaryKey,
    required this.resourceGroupName,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'primaryKey': ?primaryKey,
      'resourceGroupName': resourceGroupName,
      'workspaceId': ?workspaceId,
    };
  }

  factory ExtensionMonitoringStatusArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionMonitoringStatusArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
