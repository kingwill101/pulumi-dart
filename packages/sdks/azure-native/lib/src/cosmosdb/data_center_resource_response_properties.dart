// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_method_ldap_properties_response.dart';
import 'cassandra_error_response.dart';
import 'seed_node_response.dart';

/// Properties of a managed Cassandra data center.
class DataCenterResourceResponseProperties {
  /// Ldap authentication method properties. This feature is in preview.
  final pulumi.Input<AuthenticationMethodLdapPropertiesResponse?>? authenticationMethodLdapProperties;
  /// If the data center has Availability Zone support, apply it to the Virtual Machine ScaleSet that host the cassandra data center virtual machines.
  final pulumi.Input<bool?>? availabilityZone;
  /// Indicates the Key Uri of the customer key to use for encryption of the backup storage account.
  final pulumi.Input<String?>? backupStorageCustomerKeyUri;
  /// A fragment of a cassandra.yaml configuration file to be included in the cassandra.yaml for all nodes in this data center. The fragment should be Base64 encoded, and only a subset of keys are allowed.
  final pulumi.Input<String?>? base64EncodedCassandraYamlFragment;
  /// The region this data center should be created in.
  final pulumi.Input<String?>? dataCenterLocation;
  /// Whether the data center has been deallocated.
  final pulumi.Input<bool?>? deallocated;
  /// Resource id of a subnet the nodes in this data center should have their network interfaces connected to. The subnet must be in the same region specified in 'dataCenterLocation' and must be able to route to the subnet specified in the cluster's 'delegatedManagementSubnetId' property. This resource id will be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'.
  final pulumi.Input<String?>? delegatedSubnetId;
  /// Number of disks attached to each node. Default is 4.
  final pulumi.Input<int?>? diskCapacity;
  /// Disk SKU used for data centers. Default value is P30.
  final pulumi.Input<String?>? diskSku;
  /// Key uri to use for encryption of managed disks. Ensure the system assigned identity of the cluster has been assigned appropriate permissions(key get/wrap/unwrap permissions) on the key.
  final pulumi.Input<String?>? managedDiskCustomerKeyUri;
  /// The number of nodes the data center should have. This is the desired number. After it is set, it may take some time for the data center to be scaled to match. To monitor the number of nodes and their status, use the fetchNodeStatus method on the cluster.
  final pulumi.Input<int?>? nodeCount;
  /// Ip of the VPN Endpoint for this data center.
  final pulumi.Input<String?>? privateEndpointIpAddress;
  /// Error related to resource provisioning.
  final pulumi.Input<CassandraErrorResponse?>? provisionError;
  /// The status of the resource at the time the operation was called.
  final pulumi.Input<String?>? provisioningState;
  /// IP addresses for seed nodes in this data center. This is for reference. Generally you will want to use the seedNodes property on the cluster, which aggregates the seed nodes from all data centers in the cluster.
  final pulumi.Input<List<SeedNodeResponse>> seedNodes;
  /// Virtual Machine SKU used for data centers. Default value is Standard_DS14_v2
  final pulumi.Input<String?>? sku;

  /// Creates a new [DataCenterResourceResponseProperties].
  /// [authenticationMethodLdapProperties] Ldap authentication method properties. This feature is in preview.
  /// [availabilityZone] If the data center has Availability Zone support, apply it to the Virtual Machine ScaleSet that host the cassandra data center virtual machines.
  /// [backupStorageCustomerKeyUri] Indicates the Key Uri of the customer key to use for encryption of the backup storage account.
  /// [base64EncodedCassandraYamlFragment] A fragment of a cassandra.yaml configuration file to be included in the cassandra.yaml for all nodes in this data center. The fragment should be Base64 encoded, and only a subset of keys are allowed.
  /// [dataCenterLocation] The region this data center should be created in.
  /// [deallocated] Whether the data center has been deallocated.
  /// [delegatedSubnetId] Resource id of a subnet the nodes in this data center should have their network interfaces connected to. The subnet must be in the same region specified in 'dataCenterLocation' and must be able to route to the subnet specified in the cluster's 'delegatedManagementSubnetId' property. This resource id will be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'.
  /// [diskCapacity] Number of disks attached to each node. Default is 4.
  /// [diskSku] Disk SKU used for data centers. Default value is P30.
  /// [managedDiskCustomerKeyUri] Key uri to use for encryption of managed disks. Ensure the system assigned identity of the cluster has been assigned appropriate permissions(key get/wrap/unwrap permissions) on the key.
  /// [nodeCount] The number of nodes the data center should have. This is the desired number. After it is set, it may take some time for the data center to be scaled to match. To monitor the number of nodes and their status, use the fetchNodeStatus method on the cluster.
  /// [privateEndpointIpAddress] Ip of the VPN Endpoint for this data center.
  /// [provisionError] Error related to resource provisioning.
  /// [provisioningState] The status of the resource at the time the operation was called.
  /// [seedNodes] IP addresses for seed nodes in this data center. This is for reference. Generally you will want to use the seedNodes property on the cluster, which aggregates the seed nodes from all data centers in the cluster.
  /// [sku] Virtual Machine SKU used for data centers. Default value is Standard_DS14_v2
  const DataCenterResourceResponseProperties({
    this.authenticationMethodLdapProperties,
    this.availabilityZone,
    this.backupStorageCustomerKeyUri,
    this.base64EncodedCassandraYamlFragment,
    this.dataCenterLocation,
    this.deallocated,
    this.delegatedSubnetId,
    this.diskCapacity,
    this.diskSku,
    this.managedDiskCustomerKeyUri,
    this.nodeCount,
    this.privateEndpointIpAddress,
    this.provisionError,
    this.provisioningState,
    required this.seedNodes,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMethodLdapProperties': ?pulumi.Input.mapOptionalInputValue<AuthenticationMethodLdapPropertiesResponse, Map<String, dynamic>>(authenticationMethodLdapProperties, (value) => value.toMap()),
      'availabilityZone': ?availabilityZone,
      'backupStorageCustomerKeyUri': ?backupStorageCustomerKeyUri,
      'base64EncodedCassandraYamlFragment': ?base64EncodedCassandraYamlFragment,
      'dataCenterLocation': ?dataCenterLocation,
      'deallocated': ?deallocated,
      'delegatedSubnetId': ?delegatedSubnetId,
      'diskCapacity': ?diskCapacity,
      'diskSku': ?diskSku,
      'managedDiskCustomerKeyUri': ?managedDiskCustomerKeyUri,
      'nodeCount': ?nodeCount,
      'privateEndpointIpAddress': ?privateEndpointIpAddress,
      'provisionError': ?pulumi.Input.mapOptionalInputValue<CassandraErrorResponse, Map<String, dynamic>>(provisionError, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'seedNodes': pulumi.Input.mapInputValue<List<SeedNodeResponse>, List<Map<String, dynamic>>>(seedNodes, (value) => pulumi.Input.encodeList<SeedNodeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': ?sku,
    };
  }

  factory DataCenterResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return DataCenterResourceResponseProperties(
      authenticationMethodLdapProperties: (() { final guardedValue = map['authenticationMethodLdapProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthenticationMethodLdapPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      backupStorageCustomerKeyUri: (() { final guardedValue = map['backupStorageCustomerKeyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      base64EncodedCassandraYamlFragment: (() { final guardedValue = map['base64EncodedCassandraYamlFragment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCenterLocation: (() { final guardedValue = map['dataCenterLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deallocated: (() { final guardedValue = map['deallocated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delegatedSubnetId: (() { final guardedValue = map['delegatedSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskCapacity: (() { final guardedValue = map['diskCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      diskSku: (() { final guardedValue = map['diskSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedDiskCustomerKeyUri: (() { final guardedValue = map['managedDiskCustomerKeyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      privateEndpointIpAddress: (() { final guardedValue = map['privateEndpointIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionError: (() { final guardedValue = map['provisionError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CassandraErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seedNodes: pulumi.Input.fromValue(pulumi.Input.decodeList<SeedNodeResponse>(map['seedNodes']!, (value) => SeedNodeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
