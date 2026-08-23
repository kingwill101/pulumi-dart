// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_workspace_integration_response.dart';

/// GrafanaIntegrations is a bundled observability experience (e.g. pre-configured data source, tailored Grafana dashboards, alerting defaults) for common monitoring scenarios.
class GrafanaIntegrationsResponse {
  final pulumi.Input<List<AzureMonitorWorkspaceIntegrationResponse>>? azureMonitorWorkspaceIntegrations;

  /// Creates a new [GrafanaIntegrationsResponse].
  /// [azureMonitorWorkspaceIntegrations] Optional.
  const GrafanaIntegrationsResponse({
    this.azureMonitorWorkspaceIntegrations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceIntegrations': ?pulumi.Input.mapOptionalInputValue<List<AzureMonitorWorkspaceIntegrationResponse>, List<Map<String, dynamic>>>(azureMonitorWorkspaceIntegrations, (value) => pulumi.Input.encodeList<AzureMonitorWorkspaceIntegrationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GrafanaIntegrationsResponse.fromMap(Map<String, dynamic> map) {
    return GrafanaIntegrationsResponse(
      azureMonitorWorkspaceIntegrations: (() { final guardedValue = map['azureMonitorWorkspaceIntegrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureMonitorWorkspaceIntegrationResponse>(guardedValue, (value) => AzureMonitorWorkspaceIntegrationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
