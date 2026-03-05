// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Data Collection Rule and Endpoint used for ingestion by default.
class AzureMonitorWorkspaceResponseDefaultIngestionSettings {
  /// The Azure resource Id of the default data collection endpoint for this Azure Monitor Workspace.
  final pulumi.Input<String> dataCollectionEndpointResourceId;
  /// The Azure resource Id of the default data collection rule for this Azure Monitor Workspace.
  final pulumi.Input<String> dataCollectionRuleResourceId;

  /// Creates a new [AzureMonitorWorkspaceResponseDefaultIngestionSettings].
  /// [dataCollectionEndpointResourceId] The Azure resource Id of the default data collection endpoint for this Azure Monitor Workspace.
  /// [dataCollectionRuleResourceId] The Azure resource Id of the default data collection rule for this Azure Monitor Workspace.
  AzureMonitorWorkspaceResponseDefaultIngestionSettings({
    required this.dataCollectionEndpointResourceId,
    required this.dataCollectionRuleResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointResourceId': dataCollectionEndpointResourceId,
      'dataCollectionRuleResourceId': dataCollectionRuleResourceId,
    };
  }

  factory AzureMonitorWorkspaceResponseDefaultIngestionSettings.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceResponseDefaultIngestionSettings(
      dataCollectionEndpointResourceId: pulumi.Input.fromValue(map['dataCollectionEndpointResourceId'] as String),
      dataCollectionRuleResourceId: pulumi.Input.fromValue(map['dataCollectionRuleResourceId'] as String),
    );
  }
}

