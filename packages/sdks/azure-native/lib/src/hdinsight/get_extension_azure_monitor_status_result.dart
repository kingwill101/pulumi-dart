// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_selected_configurations_response.dart';

/// Result data returned by getExtensionAzureMonitorStatus.
class GetExtensionAzureMonitorStatusResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The status of the monitor on the HDInsight cluster.
  final bool? clusterMonitoringEnabled;
  /// The selected configurations.
  final AzureMonitorSelectedConfigurationsResponse? selectedConfigurations;
  /// The workspace ID of the monitor on the HDInsight cluster.
  final String? workspaceId;

  /// Creates a new [GetExtensionAzureMonitorStatusResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterMonitoringEnabled] The status of the monitor on the HDInsight cluster.
  /// [selectedConfigurations] The selected configurations.
  /// [workspaceId] The workspace ID of the monitor on the HDInsight cluster.
  GetExtensionAzureMonitorStatusResult({
    required this.azureApiVersion,
    this.clusterMonitoringEnabled,
    this.selectedConfigurations,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clusterMonitoringEnabled': ?clusterMonitoringEnabled,
      'selectedConfigurations': ?selectedConfigurations == null ? null : selectedConfigurations!.toMap(),
      'workspaceId': ?workspaceId,
    };
  }

  factory GetExtensionAzureMonitorStatusResult.fromMap(Map<String, dynamic> map) {
    return GetExtensionAzureMonitorStatusResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clusterMonitoringEnabled: map['clusterMonitoringEnabled'] == null ? null : map['clusterMonitoringEnabled'] as bool,
      selectedConfigurations: map['selectedConfigurations'] == null ? null : AzureMonitorSelectedConfigurationsResponse.fromMap((map['selectedConfigurations'] as Map).cast<String, dynamic>()),
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
    );
  }
}

