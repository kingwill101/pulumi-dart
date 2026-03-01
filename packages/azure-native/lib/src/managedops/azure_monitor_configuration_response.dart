// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the Azure Monitor Insights service.
class AzureMonitorConfigurationResponse {
  /// Azure monitor workspace resource ID used by the service.
  final String azureMonitorWorkspaceId;

  /// Creates a new [AzureMonitorConfigurationResponse].
  /// [azureMonitorWorkspaceId] Azure monitor workspace resource ID used by the service.
  AzureMonitorConfigurationResponse({
    required this.azureMonitorWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceId': azureMonitorWorkspaceId,
    };
  }

  factory AzureMonitorConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorConfigurationResponse(
      azureMonitorWorkspaceId: map['azureMonitorWorkspaceId'] as String,
    );
  }
}

