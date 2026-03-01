// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hdinsight_get_extension_monitoring_status_args_doc}
/// Arguments for getExtensionMonitoringStatus.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_get_extension_monitoring_status_args_doc}
class GetExtensionMonitoringStatusArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExtensionMonitoringStatusArgs].
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group.
  GetExtensionMonitoringStatusArgs({
    required String clusterName,
    required String resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExtensionMonitoringStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetExtensionMonitoringStatusArgs(
      clusterName: map['clusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

