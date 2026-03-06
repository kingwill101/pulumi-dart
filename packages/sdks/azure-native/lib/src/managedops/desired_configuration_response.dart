// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_configuration_response.dart';
import 'change_tracking_configuration_response.dart';

/// Desired configuration input by the user.
class DesiredConfigurationResponse {
  /// Configuration for the Azure Monitor Insights service.
  final pulumi.Input<AzureMonitorConfigurationResponse> azureMonitorInsights;
  /// Configuration for the Change Tracking and Inventory service.
  final pulumi.Input<ChangeTrackingConfigurationResponse> changeTrackingAndInventory;
  /// Desired enablement state of the Defender Cloud Security Posture Management (CSPM) service.
  final pulumi.Input<String>? defenderCspm;
  /// Desired enablement state of the Defender For Servers service.
  final pulumi.Input<String>? defenderForServers;
  /// User assigned Managed Identity used to perform operations on machines managed by Ops360.
  final pulumi.Input<String> userAssignedManagedIdentityId;

  /// Creates a new [DesiredConfigurationResponse].
  /// [azureMonitorInsights] Configuration for the Azure Monitor Insights service.
  /// [changeTrackingAndInventory] Configuration for the Change Tracking and Inventory service.
  /// [defenderCspm] Desired enablement state of the Defender Cloud Security Posture Management (CSPM) service.
  /// [defenderForServers] Desired enablement state of the Defender For Servers service.
  /// [userAssignedManagedIdentityId] User assigned Managed Identity used to perform operations on machines managed by Ops360.
  const DesiredConfigurationResponse({
    required this.azureMonitorInsights,
    required this.changeTrackingAndInventory,
    this.defenderCspm,
    this.defenderForServers,
    required this.userAssignedManagedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorInsights': pulumi.Input.mapInputValue<AzureMonitorConfigurationResponse, Map<String, dynamic>>(azureMonitorInsights, (value) => value.toMap()),
      'changeTrackingAndInventory': pulumi.Input.mapInputValue<ChangeTrackingConfigurationResponse, Map<String, dynamic>>(changeTrackingAndInventory, (value) => value.toMap()),
      'defenderCspm': ?defenderCspm,
      'defenderForServers': ?defenderForServers,
      'userAssignedManagedIdentityId': userAssignedManagedIdentityId,
    };
  }

  factory DesiredConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DesiredConfigurationResponse(
      azureMonitorInsights: pulumi.Input.fromValue(AzureMonitorConfigurationResponse.fromMap((map['azureMonitorInsights']! as Map).cast<String, dynamic>())),
      changeTrackingAndInventory: pulumi.Input.fromValue(ChangeTrackingConfigurationResponse.fromMap((map['changeTrackingAndInventory']! as Map).cast<String, dynamic>())),
      defenderCspm: (() { final guardedValue = map['defenderCspm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defenderForServers: (() { final guardedValue = map['defenderForServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedManagedIdentityId: pulumi.Input.fromValue(map['userAssignedManagedIdentityId'] as String),
    );
  }
}

