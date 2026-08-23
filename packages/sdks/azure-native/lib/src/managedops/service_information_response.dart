// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_information_response.dart';
import 'change_tracking_information_response.dart';
import 'defender_cspm_information_response.dart';
import 'defender_for_servers_information_response.dart';
import 'guest_configuration_information_response.dart';
import 'update_manager_information_response.dart';

/// Services provisioned by this resource.
class ServiceInformationResponse {
  /// Azure Monitor Insights service information.
  final pulumi.Input<AzureMonitorInformationResponse> azureMonitorInsights;
  /// Azure Policy and Machine Configuration service information.
  final pulumi.Input<GuestConfigurationInformationResponse> azurePolicyAndMachineConfiguration;
  /// Azure Update Manager service information.
  final pulumi.Input<UpdateManagerInformationResponse> azureUpdateManager;
  /// Change Tracking and Inventory service information.
  final pulumi.Input<ChangeTrackingInformationResponse> changeTrackingAndInventory;
  /// Defender for Cloud's Cloud security posture management (CSPM) service information.
  final pulumi.Input<DefenderCspmInformationResponse> defenderCspm;
  /// Defender for Servers service information.
  final pulumi.Input<DefenderForServersInformationResponse> defenderForServers;

  /// Creates a new [ServiceInformationResponse].
  /// [azureMonitorInsights] Azure Monitor Insights service information.
  /// [azurePolicyAndMachineConfiguration] Azure Policy and Machine Configuration service information.
  /// [azureUpdateManager] Azure Update Manager service information.
  /// [changeTrackingAndInventory] Change Tracking and Inventory service information.
  /// [defenderCspm] Defender for Cloud's Cloud security posture management (CSPM) service information.
  /// [defenderForServers] Defender for Servers service information.
  const ServiceInformationResponse({
    required this.azureMonitorInsights,
    required this.azurePolicyAndMachineConfiguration,
    required this.azureUpdateManager,
    required this.changeTrackingAndInventory,
    required this.defenderCspm,
    required this.defenderForServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorInsights': pulumi.Input.mapInputValue<AzureMonitorInformationResponse, Map<String, dynamic>>(azureMonitorInsights, (value) => value.toMap()),
      'azurePolicyAndMachineConfiguration': pulumi.Input.mapInputValue<GuestConfigurationInformationResponse, Map<String, dynamic>>(azurePolicyAndMachineConfiguration, (value) => value.toMap()),
      'azureUpdateManager': pulumi.Input.mapInputValue<UpdateManagerInformationResponse, Map<String, dynamic>>(azureUpdateManager, (value) => value.toMap()),
      'changeTrackingAndInventory': pulumi.Input.mapInputValue<ChangeTrackingInformationResponse, Map<String, dynamic>>(changeTrackingAndInventory, (value) => value.toMap()),
      'defenderCspm': pulumi.Input.mapInputValue<DefenderCspmInformationResponse, Map<String, dynamic>>(defenderCspm, (value) => value.toMap()),
      'defenderForServers': pulumi.Input.mapInputValue<DefenderForServersInformationResponse, Map<String, dynamic>>(defenderForServers, (value) => value.toMap()),
    };
  }

  factory ServiceInformationResponse.fromMap(Map<String, dynamic> map) {
    return ServiceInformationResponse(
      azureMonitorInsights: pulumi.Input.fromValue(AzureMonitorInformationResponse.fromMap((map['azureMonitorInsights']! as Map).cast<String, dynamic>())),
      azurePolicyAndMachineConfiguration: pulumi.Input.fromValue(GuestConfigurationInformationResponse.fromMap((map['azurePolicyAndMachineConfiguration']! as Map).cast<String, dynamic>())),
      azureUpdateManager: pulumi.Input.fromValue(UpdateManagerInformationResponse.fromMap((map['azureUpdateManager']! as Map).cast<String, dynamic>())),
      changeTrackingAndInventory: pulumi.Input.fromValue(ChangeTrackingInformationResponse.fromMap((map['changeTrackingAndInventory']! as Map).cast<String, dynamic>())),
      defenderCspm: pulumi.Input.fromValue(DefenderCspmInformationResponse.fromMap((map['defenderCspm']! as Map).cast<String, dynamic>())),
      defenderForServers: pulumi.Input.fromValue(DefenderForServersInformationResponse.fromMap((map['defenderForServers']! as Map).cast<String, dynamic>())),
    );
  }
}
