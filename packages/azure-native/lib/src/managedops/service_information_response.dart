// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_information_response.dart';
import 'change_tracking_information_response.dart';
import 'defender_cspm_information_response.dart';
import 'defender_for_servers_information_response.dart';
import 'guest_configuration_information_response.dart';
import 'update_manager_information_response.dart';

/// Services provisioned by this resource.
class ServiceInformationResponse {
  /// Azure Monitor Insights service information.
  final AzureMonitorInformationResponse azureMonitorInsights;
  /// Azure Policy and Machine Configuration service information.
  final GuestConfigurationInformationResponse azurePolicyAndMachineConfiguration;
  /// Azure Update Manager service information.
  final UpdateManagerInformationResponse azureUpdateManager;
  /// Change Tracking and Inventory service information.
  final ChangeTrackingInformationResponse changeTrackingAndInventory;
  /// Defender for Cloud's Cloud security posture management (CSPM) service information.
  final DefenderCspmInformationResponse defenderCspm;
  /// Defender for Servers service information.
  final DefenderForServersInformationResponse defenderForServers;

  /// Creates a new [ServiceInformationResponse].
  /// [azureMonitorInsights] Azure Monitor Insights service information.
  /// [azurePolicyAndMachineConfiguration] Azure Policy and Machine Configuration service information.
  /// [azureUpdateManager] Azure Update Manager service information.
  /// [changeTrackingAndInventory] Change Tracking and Inventory service information.
  /// [defenderCspm] Defender for Cloud's Cloud security posture management (CSPM) service information.
  /// [defenderForServers] Defender for Servers service information.
  ServiceInformationResponse({
    required this.azureMonitorInsights,
    required this.azurePolicyAndMachineConfiguration,
    required this.azureUpdateManager,
    required this.changeTrackingAndInventory,
    required this.defenderCspm,
    required this.defenderForServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorInsights': azureMonitorInsights.toMap(),
      'azurePolicyAndMachineConfiguration': azurePolicyAndMachineConfiguration.toMap(),
      'azureUpdateManager': azureUpdateManager.toMap(),
      'changeTrackingAndInventory': changeTrackingAndInventory.toMap(),
      'defenderCspm': defenderCspm.toMap(),
      'defenderForServers': defenderForServers.toMap(),
    };
  }

  factory ServiceInformationResponse.fromMap(Map<String, dynamic> map) {
    return ServiceInformationResponse(
      azureMonitorInsights: AzureMonitorInformationResponse.fromMap((map['azureMonitorInsights'] as Map).cast<String, dynamic>()),
      azurePolicyAndMachineConfiguration: GuestConfigurationInformationResponse.fromMap((map['azurePolicyAndMachineConfiguration'] as Map).cast<String, dynamic>()),
      azureUpdateManager: UpdateManagerInformationResponse.fromMap((map['azureUpdateManager'] as Map).cast<String, dynamic>()),
      changeTrackingAndInventory: ChangeTrackingInformationResponse.fromMap((map['changeTrackingAndInventory'] as Map).cast<String, dynamic>()),
      defenderCspm: DefenderCspmInformationResponse.fromMap((map['defenderCspm'] as Map).cast<String, dynamic>()),
      defenderForServers: DefenderForServersInformationResponse.fromMap((map['defenderForServers'] as Map).cast<String, dynamic>()),
    );
  }
}

