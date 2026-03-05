// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_workspace_properties.dart';

/// Settings of change notification configuration for a subscription.
class NotificationSettings {
  /// The state of notifications feature.
  final pulumi.Input<String>? activationState;
  /// Configuration properties of an Azure Monitor workspace that receives change notifications.
  final pulumi.Input<AzureMonitorWorkspaceProperties>? azureMonitorWorkspaceProperties;

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
      'azureMonitorWorkspaceProperties': ?pulumi.Input.mapOptionalInputValue<AzureMonitorWorkspaceProperties, Map<String, dynamic>>(azureMonitorWorkspaceProperties, (value) => value.toMap()),
    };
  }

  factory NotificationSettings.fromMap(Map<String, dynamic> map) {
    return NotificationSettings(
      activationState: (() { final guardedValue = map['activationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureMonitorWorkspaceProperties: (() { final guardedValue = map['azureMonitorWorkspaceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureMonitorWorkspaceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

