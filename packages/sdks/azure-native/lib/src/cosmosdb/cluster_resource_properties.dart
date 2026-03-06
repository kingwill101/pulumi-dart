// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_error.dart';
import 'certificate.dart';
import 'seed_node.dart';

/// Properties of a Garnet cache cluster.
class ClusterResourceProperties {
  /// Allocation state of the cluster and data center resources. Active implies the virtual machines of the cluster are allocated, deallocated implies virtual machines and resources are deallocated.
  final pulumi.Input<String>? allocationState;
  /// Which authentication method Cassandra should use to authenticate clients. 'None' turns off authentication, so should not be used except in emergencies. 'Cassandra' is the default password based authentication. The default is 'Cassandra'.
  final pulumi.Input<String>? authenticationMethod;
  /// If the data center has Availability Zone support, apply it to the Virtual Machine ScaleSet that host the garnet cluster virtual machines.
  final pulumi.Input<bool>? availabilityZone;
  /// How to connect to the azure services needed for running the cluster
  final pulumi.Input<String>? azureConnectionMethod;
  /// Whether Cassandra audit logging is enabled
  final pulumi.Input<bool>? cassandraAuditLoggingEnabled;
  /// Which version of Cassandra should this cluster converge to running (e.g., 3.11). When updated, the cluster may take some time to migrate to the new version.
  final pulumi.Input<String>? cassandraVersion;
  /// List of TLS certificates used to authorize clients connecting to the cluster. All connections are TLS encrypted whether clientCertificates is set or not, but if clientCertificates is set, the managed Cassandra cluster will reject all connections not bearing a TLS client certificate that can be validated from one or more of the public certificates in this property.
  final pulumi.Input<List<Certificate>>? clientCertificates;
  /// If you need to set the clusterName property in cassandra.yaml to something besides the resource name of the cluster, set the value to use on this property.
  final pulumi.Input<String>? clusterNameOverride;
  /// Type of the cluster. If set to Production, some operations might not be permitted on cluster.
  final pulumi.Input<String>? clusterType;
  /// Whether the cluster and associated data centers has been deallocated.
  final pulumi.Input<bool>? deallocated;
  /// Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'
  final pulumi.Input<String>? delegatedManagementSubnetId;
  /// Extensions to be added or updated on cluster.
  final pulumi.Input<List<String>>? extensions;
  /// List of TLS certificates used to authorize gossip from unmanaged data centers. The TLS certificates of all nodes in unmanaged data centers must be verifiable using one of the certificates provided in this property.
  final pulumi.Input<List<Certificate>>? externalGossipCertificates;
  /// List of IP addresses of seed nodes in unmanaged data centers. These will be added to the seed node lists of all managed nodes.
  final pulumi.Input<List<SeedNode>>? externalSeedNodes;
  /// (Deprecated) Number of hours to wait between taking a backup of the cluster.
  final pulumi.Input<int>? hoursBetweenBackups;
  /// Initial password for clients connecting as admin to the cluster. Should be changed after cluster creation. Returns null on GET. This field only applies when the authenticationMethod field is 'Cassandra'.
  final pulumi.Input<String>? initialCassandraAdminPassword;
  /// Number of nodes
  final pulumi.Input<int>? nodeCount;
  /// Virtual Machine SKU used for clusters. Default value is Standard_DS14_v2
  final pulumi.Input<String>? nodeSku;
  /// Hostname or IP address where the Prometheus endpoint containing data about the managed Cassandra nodes can be reached.
  final pulumi.Input<SeedNode>? prometheusEndpoint;
  /// Error related to resource provisioning.
  final pulumi.Input<CassandraError>? provisionError;
  /// The status of the resource at the time the operation was called.
  final pulumi.Input<String>? provisioningState;
  /// Should automatic repairs run on this cluster? If omitted, this is true, and should stay true unless you are running a hybrid cluster where you are already doing your own repairs.
  final pulumi.Input<bool>? repairEnabled;
  /// Number of copies of data maintained by the cluster
  final pulumi.Input<int>? replicationFactor;
  /// To create an empty cluster, omit this field or set it to null. To restore a backup into a new cluster, set this field to the resource id of the backup.
  final pulumi.Input<String>? restoreFromBackupId;
  /// Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'
  final pulumi.Input<String>? subnetId;

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
  /// [delegatedManagementSubnetId] Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'
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
  /// [subnetId] Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'
  const ClusterResourceProperties({
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
      'clientCertificates': ?pulumi.Input.mapOptionalInputValue<List<Certificate>, List<Map<String, dynamic>>>(clientCertificates, (value) => pulumi.Input.encodeList<Certificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterNameOverride': ?clusterNameOverride,
      'clusterType': ?clusterType,
      'deallocated': ?deallocated,
      'delegatedManagementSubnetId': ?delegatedManagementSubnetId,
      'extensions': ?extensions,
      'externalGossipCertificates': ?pulumi.Input.mapOptionalInputValue<List<Certificate>, List<Map<String, dynamic>>>(externalGossipCertificates, (value) => pulumi.Input.encodeList<Certificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'externalSeedNodes': ?pulumi.Input.mapOptionalInputValue<List<SeedNode>, List<Map<String, dynamic>>>(externalSeedNodes, (value) => pulumi.Input.encodeList<SeedNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hoursBetweenBackups': ?hoursBetweenBackups,
      'initialCassandraAdminPassword': ?initialCassandraAdminPassword,
      'nodeCount': ?nodeCount,
      'nodeSku': ?nodeSku,
      'prometheusEndpoint': ?pulumi.Input.mapOptionalInputValue<SeedNode, Map<String, dynamic>>(prometheusEndpoint, (value) => value.toMap()),
      'provisionError': ?pulumi.Input.mapOptionalInputValue<CassandraError, Map<String, dynamic>>(provisionError, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'repairEnabled': ?repairEnabled,
      'replicationFactor': ?replicationFactor,
      'restoreFromBackupId': ?restoreFromBackupId,
      'subnetId': ?subnetId,
    };
  }

  factory ClusterResourceProperties.fromMap(Map<String, dynamic> map) {
    return ClusterResourceProperties(
      allocationState: (() { final guardedValue = map['allocationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationMethod: (() { final guardedValue = map['authenticationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      azureConnectionMethod: (() { final guardedValue = map['azureConnectionMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cassandraAuditLoggingEnabled: (() { final guardedValue = map['cassandraAuditLoggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cassandraVersion: (() { final guardedValue = map['cassandraVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificates: (() { final guardedValue = map['clientCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Certificate>(guardedValue, (value) => Certificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterNameOverride: (() { final guardedValue = map['clusterNameOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deallocated: (() { final guardedValue = map['deallocated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delegatedManagementSubnetId: (() { final guardedValue = map['delegatedManagementSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      externalGossipCertificates: (() { final guardedValue = map['externalGossipCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Certificate>(guardedValue, (value) => Certificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      externalSeedNodes: (() { final guardedValue = map['externalSeedNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SeedNode>(guardedValue, (value) => SeedNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hoursBetweenBackups: (() { final guardedValue = map['hoursBetweenBackups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      initialCassandraAdminPassword: (() { final guardedValue = map['initialCassandraAdminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeSku: (() { final guardedValue = map['nodeSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prometheusEndpoint: (() { final guardedValue = map['prometheusEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SeedNode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisionError: (() { final guardedValue = map['provisionError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CassandraError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repairEnabled: (() { final guardedValue = map['repairEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      replicationFactor: (() { final guardedValue = map['replicationFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      restoreFromBackupId: (() { final guardedValue = map['restoreFromBackupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

