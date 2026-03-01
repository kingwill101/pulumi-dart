// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agri_service_config_response.dart';
import 'data_connector_credential_map_response.dart';
import 'installed_solution_map_response.dart';
import 'managed_on_behalf_of_configuration_response.dart';

/// Details of the Agriculture AgriDataManager.
class AgriServiceResourcePropertiesResponse {
  /// Config of the AgriService instance.
  final AgriServiceConfigResponse? config;
  /// Data connector credentials of AgriService instance.
  final List<DataConnectorCredentialMapResponse>? dataConnectorCredentials;
  /// AgriService installed solutions.
  final List<InstalledSolutionMapResponse>? installedSolutions;
  /// Managed On Behalf Of Configuration.
  final ManagedOnBehalfOfConfigurationResponse managedOnBehalfOfConfiguration;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [AgriServiceResourcePropertiesResponse].
  /// [config] Config of the AgriService instance.
  /// [dataConnectorCredentials] Data connector credentials of AgriService instance.
  /// [installedSolutions] AgriService installed solutions.
  /// [managedOnBehalfOfConfiguration] Managed On Behalf Of Configuration.
  /// [provisioningState] The status of the last operation.
  AgriServiceResourcePropertiesResponse({
    this.config,
    this.dataConnectorCredentials,
    this.installedSolutions,
    required this.managedOnBehalfOfConfiguration,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : config!.toMap(),
      'dataConnectorCredentials': ?dataConnectorCredentials == null ? null : pulumi.Input.encodeList<DataConnectorCredentialMapResponse, Map<String, dynamic>>(dataConnectorCredentials!, (value) => value.toMap()),
      'installedSolutions': ?installedSolutions == null ? null : pulumi.Input.encodeList<InstalledSolutionMapResponse, Map<String, dynamic>>(installedSolutions!, (value) => value.toMap()),
      'managedOnBehalfOfConfiguration': managedOnBehalfOfConfiguration.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory AgriServiceResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AgriServiceResourcePropertiesResponse(
      config: map['config'] == null ? null : AgriServiceConfigResponse.fromMap((map['config'] as Map).cast<String, dynamic>()),
      dataConnectorCredentials: map['dataConnectorCredentials'] == null ? null : pulumi.Input.decodeList<DataConnectorCredentialMapResponse>(map['dataConnectorCredentials'], (value) => DataConnectorCredentialMapResponse.fromMap((value as Map).cast<String, dynamic>())),
      installedSolutions: map['installedSolutions'] == null ? null : pulumi.Input.decodeList<InstalledSolutionMapResponse>(map['installedSolutions'], (value) => InstalledSolutionMapResponse.fromMap((value as Map).cast<String, dynamic>())),
      managedOnBehalfOfConfiguration: ManagedOnBehalfOfConfigurationResponse.fromMap((map['managedOnBehalfOfConfiguration'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

