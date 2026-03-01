// ignore_for_file: unused_element, unnecessary_cast

import 'flow_endpoints_configuration.dart';
import 'integration_service_environmen_encryption_configuration.dart';
import 'network_configuration.dart';

/// The integration service environment properties.
class IntegrationServiceEnvironmentProperties {
  /// The encryption configuration.
  final IntegrationServiceEnvironmenEncryptionConfiguration? encryptionConfiguration;
  /// The endpoints configuration.
  final FlowEndpointsConfiguration? endpointsConfiguration;
  /// Gets the tracking id.
  final String? integrationServiceEnvironmentId;
  /// The network configuration.
  final NetworkConfiguration? networkConfiguration;
  /// The provisioning state.
  final String? provisioningState;
  /// The integration service environment state.
  final String? state;

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
      'encryptionConfiguration': ?encryptionConfiguration == null ? null : encryptionConfiguration!.toMap(),
      'endpointsConfiguration': ?endpointsConfiguration == null ? null : endpointsConfiguration!.toMap(),
      'integrationServiceEnvironmentId': ?integrationServiceEnvironmentId,
      'networkConfiguration': ?networkConfiguration == null ? null : networkConfiguration!.toMap(),
      'provisioningState': ?provisioningState,
      'state': ?state,
    };
  }

  factory IntegrationServiceEnvironmentProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentProperties(
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : IntegrationServiceEnvironmenEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>()),
      endpointsConfiguration: map['endpointsConfiguration'] == null ? null : FlowEndpointsConfiguration.fromMap((map['endpointsConfiguration'] as Map).cast<String, dynamic>()),
      integrationServiceEnvironmentId: map['integrationServiceEnvironmentId'] == null ? null : map['integrationServiceEnvironmentId'] as String,
      networkConfiguration: map['networkConfiguration'] == null ? null : NetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

