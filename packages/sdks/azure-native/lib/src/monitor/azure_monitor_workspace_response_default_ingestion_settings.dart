// ignore_for_file: unused_element, unnecessary_cast


/// The Data Collection Rule and Endpoint used for ingestion by default.
class AzureMonitorWorkspaceResponseDefaultIngestionSettings {
  /// The Azure resource Id of the default data collection endpoint for this Azure Monitor Workspace.
  final String dataCollectionEndpointResourceId;
  /// The Azure resource Id of the default data collection rule for this Azure Monitor Workspace.
  final String dataCollectionRuleResourceId;

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
      dataCollectionEndpointResourceId: map['dataCollectionEndpointResourceId'] as String,
      dataCollectionRuleResourceId: map['dataCollectionRuleResourceId'] as String,
    );
  }
}

