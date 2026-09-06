// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_selected_configurations.dart';

/// {@template pulumi_hdinsight_extension_azure_monitor_status_args_doc}
/// The set of arguments for ExtensionAzureMonitorStatus.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_extension_azure_monitor_status_args_doc}
class ExtensionAzureMonitorStatusArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The Log Analytics workspace key.
  final pulumi.Input<String?>? primaryKey;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The selected configurations.
  final pulumi.Input<AzureMonitorSelectedConfigurations?>? selectedConfigurations;
  /// The Log Analytics workspace ID.
  final pulumi.Input<String?>? workspaceId;

  /// Creates a new [ExtensionAzureMonitorStatusArgs].
  /// [clusterName] The name of the cluster.
  /// [primaryKey] The Log Analytics workspace key.
  /// [resourceGroupName] The name of the resource group.
  /// [selectedConfigurations] The selected configurations.
  /// [workspaceId] The Log Analytics workspace ID.
  const ExtensionAzureMonitorStatusArgs({
    required this.clusterName,
    this.primaryKey,
    required this.resourceGroupName,
    this.selectedConfigurations,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'primaryKey': ?primaryKey,
      'resourceGroupName': resourceGroupName,
      'selectedConfigurations': ?pulumi.Input.mapOptionalInputValue<AzureMonitorSelectedConfigurations, Map<String, dynamic>>(selectedConfigurations, (value) => value.toMap()),
      'workspaceId': ?workspaceId,
    };
  }

  factory ExtensionAzureMonitorStatusArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionAzureMonitorStatusArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      selectedConfigurations: (() { final guardedValue = map['selectedConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureMonitorSelectedConfigurations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
