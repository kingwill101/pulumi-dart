// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_endpoints_configuration_response.dart';
import 'integration_service_environmen_encryption_configuration_response.dart';
import 'network_configuration_response.dart';

/// The integration service environment properties.
class IntegrationServiceEnvironmentPropertiesResponse {
  /// The encryption configuration.
  final pulumi.Input<IntegrationServiceEnvironmenEncryptionConfigurationResponse?>? encryptionConfiguration;
  /// The endpoints configuration.
  final pulumi.Input<FlowEndpointsConfigurationResponse?>? endpointsConfiguration;
  /// Gets the tracking id.
  final pulumi.Input<String?>? integrationServiceEnvironmentId;
  /// The network configuration.
  final pulumi.Input<NetworkConfigurationResponse?>? networkConfiguration;
  /// The provisioning state.
  final pulumi.Input<String?>? provisioningState;
  /// The integration service environment state.
  final pulumi.Input<String?>? state;

  /// Creates a new [IntegrationServiceEnvironmentPropertiesResponse].
  /// [encryptionConfiguration] The encryption configuration.
  /// [endpointsConfiguration] The endpoints configuration.
  /// [integrationServiceEnvironmentId] Gets the tracking id.
  /// [networkConfiguration] The network configuration.
  /// [provisioningState] The provisioning state.
  /// [state] The integration service environment state.
  const IntegrationServiceEnvironmentPropertiesResponse({
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
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationServiceEnvironmenEncryptionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointsConfiguration: (() { final guardedValue = map['endpointsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowEndpointsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integrationServiceEnvironmentId: (() { final guardedValue = map['integrationServiceEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfiguration: (() { final guardedValue = map['networkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
