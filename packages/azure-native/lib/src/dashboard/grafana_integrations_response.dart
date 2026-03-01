// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_workspace_integration_response.dart';

/// GrafanaIntegrations is a bundled observability experience (e.g. pre-configured data source, tailored Grafana dashboards, alerting defaults) for common monitoring scenarios.
class GrafanaIntegrationsResponse {
  final List<AzureMonitorWorkspaceIntegrationResponse>? azureMonitorWorkspaceIntegrations;

  /// Creates a new [GrafanaIntegrationsResponse].
  /// [azureMonitorWorkspaceIntegrations] Optional.
  GrafanaIntegrationsResponse({
    this.azureMonitorWorkspaceIntegrations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceIntegrations': ?azureMonitorWorkspaceIntegrations == null ? null : pulumi.Input.encodeList<AzureMonitorWorkspaceIntegrationResponse, Map<String, dynamic>>(azureMonitorWorkspaceIntegrations!, (value) => value.toMap()),
    };
  }

  factory GrafanaIntegrationsResponse.fromMap(Map<String, dynamic> map) {
    return GrafanaIntegrationsResponse(
      azureMonitorWorkspaceIntegrations: map['azureMonitorWorkspaceIntegrations'] == null ? null : pulumi.Input.decodeList<AzureMonitorWorkspaceIntegrationResponse>(map['azureMonitorWorkspaceIntegrations'], (value) => AzureMonitorWorkspaceIntegrationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

