// ignore_for_file: unused_element, unnecessary_cast

import 'authentication_method_ldap_properties.dart';
import 'cassandra_error.dart';

/// Properties of a managed Cassandra data center.
class DataCenterResourceProperties {
  /// Ldap authentication method properties. This feature is in preview.
  final AuthenticationMethodLdapProperties? authenticationMethodLdapProperties;
  /// If the data center has Availability Zone support, apply it to the Virtual Machine ScaleSet that host the cassandra data center virtual machines.
  final bool? availabilityZone;
  /// Indicates the Key Uri of the customer key to use for encryption of the backup storage account.
  final String? backupStorageCustomerKeyUri;
  /// A fragment of a cassandra.yaml configuration file to be included in the cassandra.yaml for all nodes in this data center. The fragment should be Base64 encoded, and only a subset of keys are allowed.
  final String? base64EncodedCassandraYamlFragment;
  /// The region this data center should be created in.
  final String? dataCenterLocation;
  /// Whether the data center has been deallocated.
  final bool? deallocated;
  /// Resource id of a subnet the nodes in this data center should have their network interfaces connected to. The subnet must be in the same region specified in 'dataCenterLocation' and must be able to route to the subnet specified in the cluster's 'delegatedManagementSubnetId' property. This resource id will be of the form '/subscriptions/<subscription id>/resourceGroups/<resource group>/providers/Microsoft.Network/virtualNetworks/<virtual network>/subnets/<subnet>'.
  final String? delegatedSubnetId;
  /// Number of disks attached to each node. Default is 4.
  final int? diskCapacity;
  /// Disk SKU used for data centers. Default value is P30.
  final String? diskSku;
  /// Key uri to use for encryption of managed disks. Ensure the system assigned identity of the cluster has been assigned appropriate permissions(key get/wrap/unwrap permissions) on the key.
  final String? managedDiskCustomerKeyUri;
  /// The number of nodes the data center should have. This is the desired number. After it is set, it may take some time for the data center to be scaled to match. To monitor the number of nodes and their status, use the fetchNodeStatus method on the cluster.
  final int? nodeCount;
  /// Ip of the VPN Endpoint for this data center.
  final String? privateEndpointIpAddress;
  /// Error related to resource provisioning.
  final CassandraError? provisionError;
  /// The status of the resource at the time the operation was called.
  final String? provisioningState;
  /// Virtual Machine SKU used for data centers. Default value is Standard_DS14_v2
  final String? sku;

  /// Creates a new [DataCenterResourceProperties].
  /// [authenticationMethodLdapProperties] Ldap authentication method properties. This feature is in preview.
  /// [availabilityZone] If the data center has Availability Zone support, apply it to the Virtual Machine ScaleSet that host the cassandra data center virtual machines.
  /// [backupStorageCustomerKeyUri] Indicates the Key Uri of the customer key to use for encryption of the backup storage account.
  /// [base64EncodedCassandraYamlFragment] A fragment of a cassandra.yaml configuration file to be included in the cassandra.yaml for all nodes in this data center. The fragment should be Base64 encoded, and only a subset of keys are allowed.
  /// [dataCenterLocation] The region this data center should be created in.
  /// [deallocated] Whether the data center has been deallocated.
  /// [delegatedSubnetId] Resource id of a subnet the nodes in this data center should have their network interfaces connected to. The subnet must be in the same region specified in 'dataCenterLocation' and must be able to route to the subnet specified in the cluster's 'delegatedManagementSubnetId' property. This resource id will be of the form '/subscriptions/<subscription id>/resourceGroups/<resource group>/providers/Microsoft.Network/virtualNetworks/<virtual network>/subnets/<subnet>'.
  /// [diskCapacity] Number of disks attached to each node. Default is 4.
  /// [diskSku] Disk SKU used for data centers. Default value is P30.
  /// [managedDiskCustomerKeyUri] Key uri to use for encryption of managed disks. Ensure the system assigned identity of the cluster has been assigned appropriate permissions(key get/wrap/unwrap permissions) on the key.
  /// [nodeCount] The number of nodes the data center should have. This is the desired number. After it is set, it may take some time for the data center to be scaled to match. To monitor the number of nodes and their status, use the fetchNodeStatus method on the cluster.
  /// [privateEndpointIpAddress] Ip of the VPN Endpoint for this data center.
  /// [provisionError] Error related to resource provisioning.
  /// [provisioningState] The status of the resource at the time the operation was called.
  /// [sku] Virtual Machine SKU used for data centers. Default value is Standard_DS14_v2
  DataCenterResourceProperties({
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
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMethodLdapProperties': ?authenticationMethodLdapProperties == null ? null : authenticationMethodLdapProperties!.toMap(),
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
      'provisionError': ?provisionError == null ? null : provisionError!.toMap(),
      'provisioningState': ?provisioningState,
      'sku': ?sku,
    };
  }

  factory DataCenterResourceProperties.fromMap(Map<String, dynamic> map) {
    return DataCenterResourceProperties(
      authenticationMethodLdapProperties: map['authenticationMethodLdapProperties'] == null ? null : AuthenticationMethodLdapProperties.fromMap((map['authenticationMethodLdapProperties'] as Map).cast<String, dynamic>()),
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as bool,
      backupStorageCustomerKeyUri: map['backupStorageCustomerKeyUri'] == null ? null : map['backupStorageCustomerKeyUri'] as String,
      base64EncodedCassandraYamlFragment: map['base64EncodedCassandraYamlFragment'] == null ? null : map['base64EncodedCassandraYamlFragment'] as String,
      dataCenterLocation: map['dataCenterLocation'] == null ? null : map['dataCenterLocation'] as String,
      deallocated: map['deallocated'] == null ? null : map['deallocated'] as bool,
      delegatedSubnetId: map['delegatedSubnetId'] == null ? null : map['delegatedSubnetId'] as String,
      diskCapacity: map['diskCapacity'] == null ? null : map['diskCapacity'] as int,
      diskSku: map['diskSku'] == null ? null : map['diskSku'] as String,
      managedDiskCustomerKeyUri: map['managedDiskCustomerKeyUri'] == null ? null : map['managedDiskCustomerKeyUri'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      privateEndpointIpAddress: map['privateEndpointIpAddress'] == null ? null : map['privateEndpointIpAddress'] as String,
      provisionError: map['provisionError'] == null ? null : CassandraError.fromMap((map['provisionError'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
    );
  }
}

