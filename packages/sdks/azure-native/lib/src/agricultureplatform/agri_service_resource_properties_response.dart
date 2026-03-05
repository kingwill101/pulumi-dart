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
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgriServiceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataConnectorCredentials: (() { final guardedValue = map['dataConnectorCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataConnectorCredentialMapResponse>(guardedValue, (value) => DataConnectorCredentialMapResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      installedSolutions: (() { final guardedValue = map['installedSolutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstalledSolutionMapResponse>(guardedValue, (value) => InstalledSolutionMapResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedOnBehalfOfConfiguration: pulumi.Input.fromValue(ManagedOnBehalfOfConfigurationResponse.fromMap((map['managedOnBehalfOfConfiguration']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

