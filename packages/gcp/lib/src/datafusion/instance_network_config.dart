// ignore_for_file: unused_element, unnecessary_cast

import 'instance_network_config_private_service_connect_config.dart';

class InstanceNetworkConfig {
  /// Optional. Type of connection for establishing private IP connectivity between the Data Fusion customer project VPC and
  /// the corresponding tenant project from a predefined list of available connection modes.
  /// If this field is unspecified for a private instance, VPC peering is used.
  /// Possible values are: `VPC_PEERING`, `PRIVATE_SERVICE_CONNECT_INTERFACES`.
  final String? connectionType;
  /// The IP range in CIDR notation to use for the managed Data Fusion instance
  /// nodes. This range must not overlap with any other ranges used in the Data Fusion instance network.
  final String? ipAllocation;
  /// Name of the network in the project with which the tenant project
  /// will be peered for executing pipelines. In case of shared VPC where the network resides in another host
  /// project the network should specified in the form of projects/{host-project-id}/global/networks/{network}
  final String? network;
  /// Optional. Configuration for Private Service Connect.
  /// This is required only when using connection type PRIVATE_SERVICE_CONNECT_INTERFACES.
  /// Structure is documented below.
  final InstanceNetworkConfigPrivateServiceConnectConfig? privateServiceConnectConfig;

  /// Creates a new [InstanceNetworkConfig].
  /// [connectionType] Optional. Type of connection for establishing private IP connectivity between the Data Fusion customer project VPC and
  /// [ipAllocation] The IP range in CIDR notation to use for the managed Data Fusion instance
  /// [network] Name of the network in the project with which the tenant project
  /// [privateServiceConnectConfig] Optional. Configuration for Private Service Connect.
  InstanceNetworkConfig({
    this.connectionType,
    this.ipAllocation,
    this.network,
    this.privateServiceConnectConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': ?connectionType,
      'ipAllocation': ?ipAllocation,
      'network': ?network,
      'privateServiceConnectConfig': ?privateServiceConnectConfig == null ? null : privateServiceConnectConfig!.toMap(),
    };
  }

  factory InstanceNetworkConfig.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkConfig(
      connectionType: map['connectionType'] == null ? null : map['connectionType'] as String,
      ipAllocation: map['ipAllocation'] == null ? null : map['ipAllocation'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      privateServiceConnectConfig: map['privateServiceConnectConfig'] == null ? null : InstanceNetworkConfigPrivateServiceConnectConfig.fromMap((map['privateServiceConnectConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

