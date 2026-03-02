// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_configuration.dart';
import 'change_tracking_configuration.dart';

/// Desired configuration input by the user.
class DesiredConfiguration {
  /// Configuration for the Azure Monitor Insights service.
  final pulumi.Input<AzureMonitorConfiguration> azureMonitorInsights;
  /// Configuration for the Change Tracking and Inventory service.
  final pulumi.Input<ChangeTrackingConfiguration> changeTrackingAndInventory;
  /// Desired enablement state of the Defender Cloud Security Posture Management (CSPM) service.
  final pulumi.Input<String>? defenderCspm;
  /// Desired enablement state of the Defender For Servers service.
  final pulumi.Input<String>? defenderForServers;
  /// User assigned Managed Identity used to perform operations on machines managed by Ops360.
  final pulumi.Input<String> userAssignedManagedIdentityId;

  /// Creates a new [DesiredConfiguration].
  /// [azureMonitorInsights] Configuration for the Azure Monitor Insights service.
  /// [changeTrackingAndInventory] Configuration for the Change Tracking and Inventory service.
  /// [defenderCspm] Desired enablement state of the Defender Cloud Security Posture Management (CSPM) service.
  /// [defenderForServers] Desired enablement state of the Defender For Servers service.
  /// [userAssignedManagedIdentityId] User assigned Managed Identity used to perform operations on machines managed by Ops360.
  DesiredConfiguration({
    required this.azureMonitorInsights,
    required this.changeTrackingAndInventory,
    this.defenderCspm,
    this.defenderForServers,
    required this.userAssignedManagedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorInsights': pulumi.Input.mapInputValue<AzureMonitorConfiguration, Map<String, dynamic>>(azureMonitorInsights, (value) => value.toMap()),
      'changeTrackingAndInventory': pulumi.Input.mapInputValue<ChangeTrackingConfiguration, Map<String, dynamic>>(changeTrackingAndInventory, (value) => value.toMap()),
      'defenderCspm': ?defenderCspm,
      'defenderForServers': ?defenderForServers,
      'userAssignedManagedIdentityId': userAssignedManagedIdentityId,
    };
  }

  factory DesiredConfiguration.fromMap(Map<String, dynamic> map) {
    return DesiredConfiguration(
      azureMonitorInsights: (AzureMonitorConfiguration.fromMap((map['azureMonitorInsights'] as Map).cast<String, dynamic>())).input(),
      changeTrackingAndInventory: (ChangeTrackingConfiguration.fromMap((map['changeTrackingAndInventory'] as Map).cast<String, dynamic>())).input(),
      defenderCspm: map['defenderCspm'] == null ? null : (map['defenderCspm'] as String).input(),
      defenderForServers: map['defenderForServers'] == null ? null : (map['defenderForServers'] as String).input(),
      userAssignedManagedIdentityId: (map['userAssignedManagedIdentityId'] as String).input(),
    );
  }
}

