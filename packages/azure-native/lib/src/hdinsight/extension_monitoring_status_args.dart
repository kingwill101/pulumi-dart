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
  ExtensionMonitoringStatusArgs({
    required String clusterName,
    String? primaryKey,
    required String resourceGroupName,
    String? workspaceId,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

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
      clusterName: map['clusterName'] as String,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
    );
  }
}

