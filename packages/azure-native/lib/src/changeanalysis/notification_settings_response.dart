// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_workspace_properties_response.dart';

/// Settings of change notification configuration for a subscription.
class NotificationSettingsResponse {
  /// The state of notifications feature.
  final String? activationState;
  /// Configuration properties of an Azure Monitor workspace that receives change notifications.
  final AzureMonitorWorkspacePropertiesResponse? azureMonitorWorkspaceProperties;

  /// Creates a new [NotificationSettingsResponse].
  /// [activationState] The state of notifications feature.
  /// [azureMonitorWorkspaceProperties] Configuration properties of an Azure Monitor workspace that receives change notifications.
  NotificationSettingsResponse({
    this.activationState,
    this.azureMonitorWorkspaceProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationState': ?activationState,
      'azureMonitorWorkspaceProperties': ?azureMonitorWorkspaceProperties == null ? null : azureMonitorWorkspaceProperties!.toMap(),
    };
  }

  factory NotificationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NotificationSettingsResponse(
      activationState: map['activationState'] == null ? null : map['activationState'] as String,
      azureMonitorWorkspaceProperties: map['azureMonitorWorkspaceProperties'] == null ? null : AzureMonitorWorkspacePropertiesResponse.fromMap((map['azureMonitorWorkspaceProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

