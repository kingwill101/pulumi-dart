// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_selected_configurations.dart';

/// {@template pulumi_hdinsight_extension_azure_monitor_agent_status_args_doc}
/// The set of arguments for ExtensionAzureMonitorAgentStatus.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_extension_azure_monitor_agent_status_args_doc}
class ExtensionAzureMonitorAgentStatusArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The Log Analytics workspace key.
  final pulumi.Input<String>? primaryKey;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The selected configurations.
  final pulumi.Input<AzureMonitorSelectedConfigurations>? selectedConfigurations;
  /// The Log Analytics workspace ID.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [ExtensionAzureMonitorAgentStatusArgs].
  /// [clusterName] The name of the cluster.
  /// [primaryKey] The Log Analytics workspace key.
  /// [resourceGroupName] The name of the resource group.
  /// [selectedConfigurations] The selected configurations.
  /// [workspaceId] The Log Analytics workspace ID.
  ExtensionAzureMonitorAgentStatusArgs({
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

  factory ExtensionAzureMonitorAgentStatusArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionAzureMonitorAgentStatusArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      selectedConfigurations: (() { final guardedValue = map['selectedConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureMonitorSelectedConfigurations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

