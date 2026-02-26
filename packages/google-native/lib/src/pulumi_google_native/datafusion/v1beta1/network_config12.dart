// ignore_for_file: unused_element, unnecessary_cast

import 'network_config_connection_type.dart';
import 'private_service_connect_config.dart';

/// Network configuration for a Data Fusion instance. These configurations are used for peering with the customer network. Configurations are optional when a public Data Fusion instance is to be created. However, providing these configurations allows several benefits, such as reduced network latency while accessing the customer resources from managed Data Fusion instance nodes, as well as access to the customer on-prem resources.
class NetworkConfig12 {
  /// Optional. Type of connection for establishing private IP connectivity between the Data Fusion customer project VPC and the corresponding tenant project from a predefined list of available connection modes. If this field is unspecified for a private instance, VPC peering is used.
  final NetworkConfigConnectionType? connectionType;

  /// Optional. The IP range in CIDR notation to use for the managed Data Fusion instance nodes. This range must not overlap with any other ranges used in the Data Fusion instance network. This is required only when using connection type VPC_PEERING. Format: a.b.c.d/22 Example: 192.168.0.0/22
  final String? ipAllocation;

  /// Optional. Name of the network in the customer project with which the Tenant Project will be peered for executing pipelines. This is required only when using connection type VPC peering. In case of shared VPC where the network resides in another host project the network should specified in the form of projects/{project-id}/global/networks/{network}. This is only required for connectivity type VPC_PEERING.
  final String? network;

  /// Optional. Configuration for Private Service Connect. This is required only when using connection type PRIVATE_SERVICE_CONNECT_INTERFACES.
  final PrivateServiceConnectConfig? privateServiceConnectConfig;

  NetworkConfig12({
    this.connectionType,
    this.ipAllocation,
    this.network,
    this.privateServiceConnectConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionTypeValue = connectionType;
    if (connectionTypeValue != null) {
      map['connectionType'] = connectionTypeValue.value;
    }
    final ipAllocationValue = ipAllocation;
    if (ipAllocationValue != null) {
      map['ipAllocation'] = ipAllocationValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final privateServiceConnectConfigValue = privateServiceConnectConfig;
    if (privateServiceConnectConfigValue != null) {
      map['privateServiceConnectConfig'] =
          privateServiceConnectConfigValue.toMap();
    }
    return map;
  }

  factory NetworkConfig12.fromMap(Map<String, dynamic> map) {
    return NetworkConfig12(
      connectionType: map['connectionType'] == null
          ? null
          : NetworkConfigConnectionType.fromValue(
              map['connectionType'] as String),
      ipAllocation:
          map['ipAllocation'] == null ? null : map['ipAllocation'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      privateServiceConnectConfig: map['privateServiceConnectConfig'] == null
          ? null
          : PrivateServiceConnectConfig.fromMap(
              (map['privateServiceConnectConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
