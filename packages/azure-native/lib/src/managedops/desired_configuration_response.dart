// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_configuration_response.dart';
import 'change_tracking_configuration_response.dart';

/// Desired configuration input by the user.
class DesiredConfigurationResponse {
  /// Configuration for the Azure Monitor Insights service.
  final AzureMonitorConfigurationResponse azureMonitorInsights;
  /// Configuration for the Change Tracking and Inventory service.
  final ChangeTrackingConfigurationResponse changeTrackingAndInventory;
  /// Desired enablement state of the Defender Cloud Security Posture Management (CSPM) service.
  final String? defenderCspm;
  /// Desired enablement state of the Defender For Servers service.
  final String? defenderForServers;
  /// User assigned Managed Identity used to perform operations on machines managed by Ops360.
  final String userAssignedManagedIdentityId;

  /// Creates a new [DesiredConfigurationResponse].
  /// [azureMonitorInsights] Configuration for the Azure Monitor Insights service.
  /// [changeTrackingAndInventory] Configuration for the Change Tracking and Inventory service.
  /// [defenderCspm] Desired enablement state of the Defender Cloud Security Posture Management (CSPM) service.
  /// [defenderForServers] Desired enablement state of the Defender For Servers service.
  /// [userAssignedManagedIdentityId] User assigned Managed Identity used to perform operations on machines managed by Ops360.
  DesiredConfigurationResponse({
    required this.azureMonitorInsights,
    required this.changeTrackingAndInventory,
    this.defenderCspm,
    this.defenderForServers,
    required this.userAssignedManagedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorInsights': azureMonitorInsights.toMap(),
      'changeTrackingAndInventory': changeTrackingAndInventory.toMap(),
      'defenderCspm': ?defenderCspm,
      'defenderForServers': ?defenderForServers,
      'userAssignedManagedIdentityId': userAssignedManagedIdentityId,
    };
  }

  factory DesiredConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DesiredConfigurationResponse(
      azureMonitorInsights: AzureMonitorConfigurationResponse.fromMap((map['azureMonitorInsights'] as Map).cast<String, dynamic>()),
      changeTrackingAndInventory: ChangeTrackingConfigurationResponse.fromMap((map['changeTrackingAndInventory'] as Map).cast<String, dynamic>()),
      defenderCspm: map['defenderCspm'] == null ? null : map['defenderCspm'] as String,
      defenderForServers: map['defenderForServers'] == null ? null : map['defenderForServers'] as String,
      userAssignedManagedIdentityId: map['userAssignedManagedIdentityId'] as String,
    );
  }
}

