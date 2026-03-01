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
  final pulumi.Input<String>? primaryKey;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The selected configurations.
  final pulumi.Input<AzureMonitorSelectedConfigurations>? selectedConfigurations;
  /// The Log Analytics workspace ID.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [ExtensionAzureMonitorStatusArgs].
  /// [clusterName] The name of the cluster.
  /// [primaryKey] The Log Analytics workspace key.
  /// [resourceGroupName] The name of the resource group.
  /// [selectedConfigurations] The selected configurations.
  /// [workspaceId] The Log Analytics workspace ID.
  ExtensionAzureMonitorStatusArgs({
    required pulumi.Output<String> clusterName,
    pulumi.Output<String>? primaryKey,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<AzureMonitorSelectedConfigurations>? selectedConfigurations,
    pulumi.Output<String>? workspaceId,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      selectedConfigurations = pulumi.Input.asOptionalInput<AzureMonitorSelectedConfigurations>(selectedConfigurations),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

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
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      selectedConfigurations: map['selectedConfigurations'] == null ? null : pulumi.Output.create<AzureMonitorSelectedConfigurations>(AzureMonitorSelectedConfigurations.fromMap((map['selectedConfigurations'] as Map).cast<String, dynamic>())),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

