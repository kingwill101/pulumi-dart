// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the Azure Monitor Insights service.
class AzureMonitorConfiguration {
  /// Azure monitor workspace resource ID used by the service.
  final String azureMonitorWorkspaceId;

  /// Creates a new [AzureMonitorConfiguration].
  /// [azureMonitorWorkspaceId] Azure monitor workspace resource ID used by the service.
  AzureMonitorConfiguration({
    required this.azureMonitorWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceId': azureMonitorWorkspaceId,
    };
  }

  factory AzureMonitorConfiguration.fromMap(Map<String, dynamic> map) {
    return AzureMonitorConfiguration(
      azureMonitorWorkspaceId: map['azureMonitorWorkspaceId'] as String,
    );
  }
}

