// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_error.dart';
import 'certificate.dart';
import 'seed_node.dart';

/// Properties of a Garnet cache cluster.
class ClusterResourceProperties {
  /// Allocation state of the cluster and data center resources. Active implies the virtual machines of the cluster are allocated, deallocated implies virtual machines and resources are deallocated.
  final String? allocationState;
  /// Which authentication method Cassandra should use to authenticate clients. 'None' turns off authentication, so should not be used except in emergencies. 'Cassandra' is the default password based authentication. The default is 'Cassandra'.
  final String? authenticationMethod;
  /// If the data center has Availability Zone support, apply it to the Virtual Machine ScaleSet that host the garnet cluster virtual machines.
  final bool? availabilityZone;
  /// How to connect to the azure services needed for running the cluster
  final String? azureConnectionMethod;
  /// Whether Cassandra audit logging is enabled
  final bool? cassandraAuditLoggingEnabled;
  /// Which version of Cassandra should this cluster converge to running (e.g., 3.11). When updated, the cluster may take some time to migrate to the new version.
  final String? cassandraVersion;
  /// List of TLS certificates used to authorize clients connecting to the cluster. All connections are TLS encrypted whether clientCertificates is set or not, but if clientCertificates is set, the managed Cassandra cluster will reject all connections not bearing a TLS client certificate that can be validated from one or more of the public certificates in this property.
  final List<Certificate>? clientCertificates;
  /// If you need to set the clusterName property in cassandra.yaml to something besides the resource name of the cluster, set the value to use on this property.
  final String? clusterNameOverride;
  /// Type of the cluster. If set to Production, some operations might not be permitted on cluster.
  final String? clusterType;
  /// Whether the cluster and associated data centers has been deallocated.
  final bool? deallocated;
  /// Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/<subscription id>/resourceGroups/<resource group>/providers/Microsoft.Network/virtualNetworks/<virtual network>/subnets/<subnet>'
  final String? delegatedManagementSubnetId;
  /// Extensions to be added or updated on cluster.
  final List<String>? extensions;
  /// List of TLS certificates used to authorize gossip from unmanaged data centers. The TLS certificates of all nodes in unmanaged data centers must be verifiable using one of the certificates provided in this property.
  final List<Certificate>? externalGossipCertificates;
  /// List of IP addresses of seed nodes in unmanaged data centers. These will be added to the seed node lists of all managed nodes.
  final List<SeedNode>? externalSeedNodes;
  /// (Deprecated) Number of hours to wait between taking a backup of the cluster.
  final int? hoursBetweenBackups;
  /// Initial password for clients connecting as admin to the cluster. Should be changed after cluster creation. Returns null on GET. This field only applies when the authenticationMethod field is 'Cassandra'.
  final String? initialCassandraAdminPassword;
  /// Number of nodes
  final int? nodeCount;
  /// Virtual Machine SKU used for clusters. Default value is Standard_DS14_v2
  final String? nodeSku;
  /// Hostname or IP address where the Prometheus endpoint containing data about the managed Cassandra nodes can be reached.
  final SeedNode? prometheusEndpoint;
  /// Error related to resource provisioning.
  final CassandraError? provisionError;
  /// The status of the resource at the time the operation was called.
  final String? provisioningState;
  /// Should automatic repairs run on this cluster? If omitted, this is true, and should stay true unless you are running a hybrid cluster where you are already doing your own repairs.
  final bool? repairEnabled;
  /// Number of copies of data maintained by the cluster
  final int? replicationFactor;
  /// To create an empty cluster, omit this field or set it to null. To restore a backup into a new cluster, set this field to the resource id of the backup.
  final String? restoreFromBackupId;
  /// Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/<subscription id>/resourceGroups/<resource group>/providers/Microsoft.Network/virtualNetworks/<virtual network>/subnets/<subnet>'
  final String? subnetId;

  /// Creates a new [ClusterResourceProperties].
  /// [allocationState] Allocation state of the cluster and data center resources. Active implies the virtual machines of the cluster are allocated, deallocated implies virtual machines and resources are deallocated.
  /// [authenticationMethod] Which authentication method Cassandra should use to authenticate clients. 'None' turns off authentication, so should not be used except in emergencies. 'Cassandra' is the default password based authentication. The default is 'Cassandra'.
  /// [availabilityZone] If the data center has Availability Zone support, apply it to the Virtual Machine ScaleSet that host the garnet cluster virtual machines.
  /// [azureConnectionMethod] How to connect to the azure services needed for running the cluster
  /// [cassandraAuditLoggingEnabled] Whether Cassandra audit logging is enabled
  /// [cassandraVersion] Which version of Cassandra should this cluster converge to running (e.g., 3.11). When updated, the cluster may take some time to migrate to the new version.
  /// [clientCertificates] List of TLS certificates used to authorize clients connecting to the cluster. All connections are TLS encrypted whether clientCertificates is set or not, but if clientCertificates is set, the managed Cassandra cluster will reject all connections not bearing a TLS client certificate that can be validated from one or more of the public certificates in this property.
  /// [clusterNameOverride] If you need to set the clusterName property in cassandra.yaml to something besides the resource name of the cluster, set the value to use on this property.
  /// [clusterType] Type of the cluster. If set to Production, some operations might not be permitted on cluster.
  /// [deallocated] Whether the cluster and associated data centers has been deallocated.
  /// [delegatedManagementSubnetId] Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/<subscription id>/resourceGroups/<resource group>/providers/Microsoft.Network/virtualNetworks/<virtual network>/subnets/<subnet>'
  /// [extensions] Extensions to be added or updated on cluster.
  /// [externalGossipCertificates] List of TLS certificates used to authorize gossip from unmanaged data centers. The TLS certificates of all nodes in unmanaged data centers must be verifiable using one of the certificates provided in this property.
  /// [externalSeedNodes] List of IP addresses of seed nodes in unmanaged data centers. These will be added to the seed node lists of all managed nodes.
  /// [hoursBetweenBackups] (Deprecated) Number of hours to wait between taking a backup of the cluster.
  /// [initialCassandraAdminPassword] Initial password for clients connecting as admin to the cluster. Should be changed after cluster creation. Returns null on GET. This field only applies when the authenticationMethod field is 'Cassandra'.
  /// [nodeCount] Number of nodes
  /// [nodeSku] Virtual Machine SKU used for clusters. Default value is Standard_DS14_v2
  /// [prometheusEndpoint] Hostname or IP address where the Prometheus endpoint containing data about the managed Cassandra nodes can be reached.
  /// [provisionError] Error related to resource provisioning.
  /// [provisioningState] The status of the resource at the time the operation was called.
  /// [repairEnabled] Should automatic repairs run on this cluster? If omitted, this is true, and should stay true unless you are running a hybrid cluster where you are already doing your own repairs.
  /// [replicationFactor] Number of copies of data maintained by the cluster
  /// [restoreFromBackupId] To create an empty cluster, omit this field or set it to null. To restore a backup into a new cluster, set this field to the resource id of the backup.
  /// [subnetId] Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/<subscription id>/resourceGroups/<resource group>/providers/Microsoft.Network/virtualNetworks/<virtual network>/subnets/<subnet>'
  ClusterResourceProperties({
    this.allocationState,
    this.authenticationMethod,
    this.availabilityZone,
    this.azureConnectionMethod,
    this.cassandraAuditLoggingEnabled,
    this.cassandraVersion,
    this.clientCertificates,
    this.clusterNameOverride,
    this.clusterType,
    this.deallocated,
    this.delegatedManagementSubnetId,
    this.extensions,
    this.externalGossipCertificates,
    this.externalSeedNodes,
    this.hoursBetweenBackups,
    this.initialCassandraAdminPassword,
    this.nodeCount,
    this.nodeSku,
    this.prometheusEndpoint,
    this.provisionError,
    this.provisioningState,
    this.repairEnabled,
    this.replicationFactor,
    this.restoreFromBackupId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationState': ?allocationState,
      'authenticationMethod': ?authenticationMethod,
      'availabilityZone': ?availabilityZone,
      'azureConnectionMethod': ?azureConnectionMethod,
      'cassandraAuditLoggingEnabled': ?cassandraAuditLoggingEnabled,
      'cassandraVersion': ?cassandraVersion,
      'clientCertificates': ?clientCertificates == null ? null : pulumi.Input.encodeList<Certificate, Map<String, dynamic>>(clientCertificates!, (value) => value.toMap()),
      'clusterNameOverride': ?clusterNameOverride,
      'clusterType': ?clusterType,
      'deallocated': ?deallocated,
      'delegatedManagementSubnetId': ?delegatedManagementSubnetId,
      'extensions': ?extensions,
      'externalGossipCertificates': ?externalGossipCertificates == null ? null : pulumi.Input.encodeList<Certificate, Map<String, dynamic>>(externalGossipCertificates!, (value) => value.toMap()),
      'externalSeedNodes': ?externalSeedNodes == null ? null : pulumi.Input.encodeList<SeedNode, Map<String, dynamic>>(externalSeedNodes!, (value) => value.toMap()),
      'hoursBetweenBackups': ?hoursBetweenBackups,
      'initialCassandraAdminPassword': ?initialCassandraAdminPassword,
      'nodeCount': ?nodeCount,
      'nodeSku': ?nodeSku,
      'prometheusEndpoint': ?prometheusEndpoint == null ? null : prometheusEndpoint!.toMap(),
      'provisionError': ?provisionError == null ? null : provisionError!.toMap(),
      'provisioningState': ?provisioningState,
      'repairEnabled': ?repairEnabled,
      'replicationFactor': ?replicationFactor,
      'restoreFromBackupId': ?restoreFromBackupId,
      'subnetId': ?subnetId,
    };
  }

  factory ClusterResourceProperties.fromMap(Map<String, dynamic> map) {
    return ClusterResourceProperties(
      allocationState: map['allocationState'] == null ? null : map['allocationState'] as String,
      authenticationMethod: map['authenticationMethod'] == null ? null : map['authenticationMethod'] as String,
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as bool,
      azureConnectionMethod: map['azureConnectionMethod'] == null ? null : map['azureConnectionMethod'] as String,
      cassandraAuditLoggingEnabled: map['cassandraAuditLoggingEnabled'] == null ? null : map['cassandraAuditLoggingEnabled'] as bool,
      cassandraVersion: map['cassandraVersion'] == null ? null : map['cassandraVersion'] as String,
      clientCertificates: map['clientCertificates'] == null ? null : pulumi.Input.decodeList<Certificate>(map['clientCertificates'], (value) => Certificate.fromMap((value as Map).cast<String, dynamic>())),
      clusterNameOverride: map['clusterNameOverride'] == null ? null : map['clusterNameOverride'] as String,
      clusterType: map['clusterType'] == null ? null : map['clusterType'] as String,
      deallocated: map['deallocated'] == null ? null : map['deallocated'] as bool,
      delegatedManagementSubnetId: map['delegatedManagementSubnetId'] == null ? null : map['delegatedManagementSubnetId'] as String,
      extensions: map['extensions'] == null ? null : (map['extensions'] as List).cast<String>(),
      externalGossipCertificates: map['externalGossipCertificates'] == null ? null : pulumi.Input.decodeList<Certificate>(map['externalGossipCertificates'], (value) => Certificate.fromMap((value as Map).cast<String, dynamic>())),
      externalSeedNodes: map['externalSeedNodes'] == null ? null : pulumi.Input.decodeList<SeedNode>(map['externalSeedNodes'], (value) => SeedNode.fromMap((value as Map).cast<String, dynamic>())),
      hoursBetweenBackups: map['hoursBetweenBackups'] == null ? null : map['hoursBetweenBackups'] as int,
      initialCassandraAdminPassword: map['initialCassandraAdminPassword'] == null ? null : map['initialCassandraAdminPassword'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      nodeSku: map['nodeSku'] == null ? null : map['nodeSku'] as String,
      prometheusEndpoint: map['prometheusEndpoint'] == null ? null : SeedNode.fromMap((map['prometheusEndpoint'] as Map).cast<String, dynamic>()),
      provisionError: map['provisionError'] == null ? null : CassandraError.fromMap((map['provisionError'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      repairEnabled: map['repairEnabled'] == null ? null : map['repairEnabled'] as bool,
      replicationFactor: map['replicationFactor'] == null ? null : map['replicationFactor'] as int,
      restoreFromBackupId: map['restoreFromBackupId'] == null ? null : map['restoreFromBackupId'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

