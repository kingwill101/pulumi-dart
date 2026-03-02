// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agri_service_config_response.dart';
import 'data_connector_credential_map_response.dart';
import 'installed_solution_map_response.dart';
import 'managed_on_behalf_of_configuration_response.dart';

/// Details of the Agriculture AgriDataManager.
class AgriServiceResourcePropertiesResponse {
  /// Config of the AgriService instance.
  final pulumi.Input<AgriServiceConfigResponse>? config;
  /// Data connector credentials of AgriService instance.
  final pulumi.Input<List<DataConnectorCredentialMapResponse>>? dataConnectorCredentials;
  /// AgriService installed solutions.
  final pulumi.Input<List<InstalledSolutionMapResponse>>? installedSolutions;
  /// Managed On Behalf Of Configuration.
  final pulumi.Input<ManagedOnBehalfOfConfigurationResponse> managedOnBehalfOfConfiguration;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

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
      'config': ?pulumi.Input.mapOptionalInputValue<AgriServiceConfigResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
      'dataConnectorCredentials': ?pulumi.Input.mapOptionalInputValue<List<DataConnectorCredentialMapResponse>, List<Map<String, dynamic>>>(dataConnectorCredentials, (value) => pulumi.Input.encodeList<DataConnectorCredentialMapResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'installedSolutions': ?pulumi.Input.mapOptionalInputValue<List<InstalledSolutionMapResponse>, List<Map<String, dynamic>>>(installedSolutions, (value) => pulumi.Input.encodeList<InstalledSolutionMapResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedOnBehalfOfConfiguration': pulumi.Input.mapInputValue<ManagedOnBehalfOfConfigurationResponse, Map<String, dynamic>>(managedOnBehalfOfConfiguration, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory AgriServiceResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AgriServiceResourcePropertiesResponse(
      config: map['config'] == null ? null : (AgriServiceConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>())).input(),
      dataConnectorCredentials: map['dataConnectorCredentials'] == null ? null : (pulumi.Input.decodeList<DataConnectorCredentialMapResponse>(map['dataConnectorCredentials']!, (value) => DataConnectorCredentialMapResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      installedSolutions: map['installedSolutions'] == null ? null : (pulumi.Input.decodeList<InstalledSolutionMapResponse>(map['installedSolutions']!, (value) => InstalledSolutionMapResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      managedOnBehalfOfConfiguration: (ManagedOnBehalfOfConfigurationResponse.fromMap((map['managedOnBehalfOfConfiguration'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

