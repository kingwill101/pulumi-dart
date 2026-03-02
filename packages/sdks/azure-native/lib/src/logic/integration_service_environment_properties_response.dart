// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_endpoints_configuration_response.dart';
import 'integration_service_environmen_encryption_configuration_response.dart';
import 'network_configuration_response.dart';

/// The integration service environment properties.
class IntegrationServiceEnvironmentPropertiesResponse {
  /// The encryption configuration.
  final pulumi.Input<IntegrationServiceEnvironmenEncryptionConfigurationResponse>? encryptionConfiguration;
  /// The endpoints configuration.
  final pulumi.Input<FlowEndpointsConfigurationResponse>? endpointsConfiguration;
  /// Gets the tracking id.
  final pulumi.Input<String>? integrationServiceEnvironmentId;
  /// The network configuration.
  final pulumi.Input<NetworkConfigurationResponse>? networkConfiguration;
  /// The provisioning state.
  final pulumi.Input<String>? provisioningState;
  /// The integration service environment state.
  final pulumi.Input<String>? state;

  /// Creates a new [IntegrationServiceEnvironmentPropertiesResponse].
  /// [encryptionConfiguration] The encryption configuration.
  /// [endpointsConfiguration] The endpoints configuration.
  /// [integrationServiceEnvironmentId] Gets the tracking id.
  /// [networkConfiguration] The network configuration.
  /// [provisioningState] The provisioning state.
  /// [state] The integration service environment state.
  IntegrationServiceEnvironmentPropertiesResponse({
    this.encryptionConfiguration,
    this.endpointsConfiguration,
    this.integrationServiceEnvironmentId,
    this.networkConfiguration,
    this.provisioningState,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<IntegrationServiceEnvironmenEncryptionConfigurationResponse, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'endpointsConfiguration': ?pulumi.Input.mapOptionalInputValue<FlowEndpointsConfigurationResponse, Map<String, dynamic>>(endpointsConfiguration, (value) => value.toMap()),
      'integrationServiceEnvironmentId': ?integrationServiceEnvironmentId,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkConfigurationResponse, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'state': ?state,
    };
  }

  factory IntegrationServiceEnvironmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentPropertiesResponse(
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : (IntegrationServiceEnvironmenEncryptionConfigurationResponse.fromMap((map['encryptionConfiguration']! as Map).cast<String, dynamic>())).input(),
      endpointsConfiguration: map['endpointsConfiguration'] == null ? null : (FlowEndpointsConfigurationResponse.fromMap((map['endpointsConfiguration']! as Map).cast<String, dynamic>())).input(),
      integrationServiceEnvironmentId: map['integrationServiceEnvironmentId'] == null ? null : (map['integrationServiceEnvironmentId']! as String).input(),
      networkConfiguration: map['networkConfiguration'] == null ? null : (NetworkConfigurationResponse.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>())).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

