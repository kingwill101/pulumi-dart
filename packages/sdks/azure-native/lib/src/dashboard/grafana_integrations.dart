// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_workspace_integration.dart';

/// GrafanaIntegrations is a bundled observability experience (e.g. pre-configured data source, tailored Grafana dashboards, alerting defaults) for common monitoring scenarios.
class GrafanaIntegrations {
  final pulumi.Input<List<AzureMonitorWorkspaceIntegration>>?
  azureMonitorWorkspaceIntegrations;

  /// Creates a new [GrafanaIntegrations].
  /// [azureMonitorWorkspaceIntegrations] Optional.
  GrafanaIntegrations({this.azureMonitorWorkspaceIntegrations});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceIntegrations':
          ?pulumi.Input.mapOptionalInputValue<
            List<AzureMonitorWorkspaceIntegration>,
            List<Map<String, dynamic>>
          >(
            azureMonitorWorkspaceIntegrations,
            (value) =>
                pulumi.Input.encodeList<
                  AzureMonitorWorkspaceIntegration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GrafanaIntegrations.fromMap(Map<String, dynamic> map) {
    return GrafanaIntegrations(
      azureMonitorWorkspaceIntegrations: (() {
        final guardedValue = map['azureMonitorWorkspaceIntegrations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AzureMonitorWorkspaceIntegration>(
            guardedValue,
            (value) => AzureMonitorWorkspaceIntegration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
