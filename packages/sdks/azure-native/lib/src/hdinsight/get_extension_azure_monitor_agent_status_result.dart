// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_selected_configurations_response.dart';

/// Result data returned by getExtensionAzureMonitorAgentStatus.
class GetExtensionAzureMonitorAgentStatusResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The status of the monitor on the HDInsight cluster.
  final bool? clusterMonitoringEnabled;
  /// The selected configurations.
  final AzureMonitorSelectedConfigurationsResponse? selectedConfigurations;
  /// The workspace ID of the monitor on the HDInsight cluster.
  final String? workspaceId;

  /// Creates a new [GetExtensionAzureMonitorAgentStatusResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterMonitoringEnabled] The status of the monitor on the HDInsight cluster.
  /// [selectedConfigurations] The selected configurations.
  /// [workspaceId] The workspace ID of the monitor on the HDInsight cluster.
  const GetExtensionAzureMonitorAgentStatusResult({
    required this.azureApiVersion,
    this.clusterMonitoringEnabled,
    this.selectedConfigurations,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clusterMonitoringEnabled': ?clusterMonitoringEnabled,
      'selectedConfigurations': ?selectedConfigurations?.toMap(),
      'workspaceId': ?workspaceId,
    };
  }

  factory GetExtensionAzureMonitorAgentStatusResult.fromMap(Map<String, dynamic> map) {
    return GetExtensionAzureMonitorAgentStatusResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clusterMonitoringEnabled: (() { final guardedValue = map['clusterMonitoringEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      selectedConfigurations: (() { final guardedValue = map['selectedConfigurations']; if (guardedValue == null) return null; return AzureMonitorSelectedConfigurationsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
