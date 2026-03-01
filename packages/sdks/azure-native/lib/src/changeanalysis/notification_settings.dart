// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_workspace_properties.dart';

/// Settings of change notification configuration for a subscription.
class NotificationSettings {
  /// The state of notifications feature.
  final String? activationState;
  /// Configuration properties of an Azure Monitor workspace that receives change notifications.
  final AzureMonitorWorkspaceProperties? azureMonitorWorkspaceProperties;

  /// Creates a new [NotificationSettings].
  /// [activationState] The state of notifications feature.
  /// [azureMonitorWorkspaceProperties] Configuration properties of an Azure Monitor workspace that receives change notifications.
  NotificationSettings({
    this.activationState,
    this.azureMonitorWorkspaceProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationState': ?activationState,
      'azureMonitorWorkspaceProperties': ?azureMonitorWorkspaceProperties == null ? null : azureMonitorWorkspaceProperties!.toMap(),
    };
  }

  factory NotificationSettings.fromMap(Map<String, dynamic> map) {
    return NotificationSettings(
      activationState: map['activationState'] == null ? null : map['activationState'] as String,
      azureMonitorWorkspaceProperties: map['azureMonitorWorkspaceProperties'] == null ? null : AzureMonitorWorkspaceProperties.fromMap((map['azureMonitorWorkspaceProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

