// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_endpoints_configuration.dart';
import 'integration_service_environmen_encryption_configuration.dart';
import 'network_configuration.dart';

/// The integration service environment properties.
class IntegrationServiceEnvironmentProperties {
  /// The encryption configuration.
  final pulumi.Input<IntegrationServiceEnvironmenEncryptionConfiguration>? encryptionConfiguration;
  /// The endpoints configuration.
  final pulumi.Input<FlowEndpointsConfiguration>? endpointsConfiguration;
  /// Gets the tracking id.
  final pulumi.Input<String>? integrationServiceEnvironmentId;
  /// The network configuration.
  final pulumi.Input<NetworkConfiguration>? networkConfiguration;
  /// The provisioning state.
  final pulumi.Input<String>? provisioningState;
  /// The integration service environment state.
  final pulumi.Input<String>? state;

  /// Creates a new [IntegrationServiceEnvironmentProperties].
  /// [encryptionConfiguration] The encryption configuration.
  /// [endpointsConfiguration] The endpoints configuration.
  /// [integrationServiceEnvironmentId] Gets the tracking id.
  /// [networkConfiguration] The network configuration.
  /// [provisioningState] The provisioning state.
  /// [state] The integration service environment state.
  IntegrationServiceEnvironmentProperties({
    this.encryptionConfiguration,
    this.endpointsConfiguration,
    this.integrationServiceEnvironmentId,
    this.networkConfiguration,
    this.provisioningState,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<IntegrationServiceEnvironmenEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'endpointsConfiguration': ?pulumi.Input.mapOptionalInputValue<FlowEndpointsConfiguration, Map<String, dynamic>>(endpointsConfiguration, (value) => value.toMap()),
      'integrationServiceEnvironmentId': ?integrationServiceEnvironmentId,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'state': ?state,
    };
  }

  factory IntegrationServiceEnvironmentProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentProperties(
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : (IntegrationServiceEnvironmenEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())).input(),
      endpointsConfiguration: map['endpointsConfiguration'] == null ? null : (FlowEndpointsConfiguration.fromMap((map['endpointsConfiguration'] as Map).cast<String, dynamic>())).input(),
      integrationServiceEnvironmentId: map['integrationServiceEnvironmentId'] == null ? null : (map['integrationServiceEnvironmentId'] as String).input(),
      networkConfiguration: map['networkConfiguration'] == null ? null : (NetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

