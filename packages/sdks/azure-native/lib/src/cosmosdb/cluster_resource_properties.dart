// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_error.dart';
import 'certificate.dart';
import 'seed_node.dart';

/// Properties of a managed Cassandra cluster.
class ClusterResourceProperties {
  /// Which authentication method Cassandra should use to authenticate clients. 'None' turns off authentication, so should not be used except in emergencies. 'Cassandra' is the default password based authentication. The default is 'Cassandra'.
  final pulumi.Input<dynamic>? authenticationMethod;
  /// How to connect to the azure services needed for running the cluster
  final pulumi.Input<dynamic>? azureConnectionMethod;
  /// Whether Cassandra audit logging is enabled
  final pulumi.Input<bool?>? cassandraAuditLoggingEnabled;
  /// Which version of Cassandra should this cluster converge to running (e.g., 3.11). When updated, the cluster may take some time to migrate to the new version.
  final pulumi.Input<String?>? cassandraVersion;
  /// List of TLS certificates used to authorize clients connecting to the cluster. All connections are TLS encrypted whether clientCertificates is set or not, but if clientCertificates is set, the managed Cassandra cluster will reject all connections not bearing a TLS client certificate that can be validated from one or more of the public certificates in this property.
  final pulumi.Input<List<Certificate>?>? clientCertificates;
  /// If you need to set the clusterName property in cassandra.yaml to something besides the resource name of the cluster, set the value to use on this property.
  final pulumi.Input<String?>? clusterNameOverride;
  /// Whether the cluster and associated data centers has been deallocated.
  final pulumi.Input<bool?>? deallocated;
  /// Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'
  final pulumi.Input<String?>? delegatedManagementSubnetId;
  /// List of TLS certificates used to authorize gossip from unmanaged data centers. The TLS certificates of all nodes in unmanaged data centers must be verifiable using one of the certificates provided in this property.
  final pulumi.Input<List<Certificate>?>? externalGossipCertificates;
  /// List of IP addresses of seed nodes in unmanaged data centers. These will be added to the seed node lists of all managed nodes.
  final pulumi.Input<List<SeedNode>?>? externalSeedNodes;
  /// (Deprecated) Number of hours to wait between taking a backup of the cluster.
  final pulumi.Input<int?>? hoursBetweenBackups;
  /// Initial password for clients connecting as admin to the cluster. Should be changed after cluster creation. Returns null on GET. This field only applies when the authenticationMethod field is 'Cassandra'.
  final pulumi.Input<String?>? initialCassandraAdminPassword;
  /// Hostname or IP address where the Prometheus endpoint containing data about the managed Cassandra nodes can be reached.
  final pulumi.Input<SeedNode?>? prometheusEndpoint;
  /// Error related to resource provisioning.
  final pulumi.Input<CassandraError?>? provisionError;
  /// The status of the resource at the time the operation was called.
  final pulumi.Input<dynamic>? provisioningState;
  /// Should automatic repairs run on this cluster? If omitted, this is true, and should stay true unless you are running a hybrid cluster where you are already doing your own repairs.
  final pulumi.Input<bool?>? repairEnabled;
  /// To create an empty cluster, omit this field or set it to null. To restore a backup into a new cluster, set this field to the resource id of the backup.
  final pulumi.Input<String?>? restoreFromBackupId;

  /// Creates a new [ClusterResourceProperties].
  /// [authenticationMethod] Which authentication method Cassandra should use to authenticate clients. 'None' turns off authentication, so should not be used except in emergencies. 'Cassandra' is the default password based authentication. The default is 'Cassandra'.
  /// [azureConnectionMethod] How to connect to the azure services needed for running the cluster
  /// [cassandraAuditLoggingEnabled] Whether Cassandra audit logging is enabled
  /// [cassandraVersion] Which version of Cassandra should this cluster converge to running (e.g., 3.11). When updated, the cluster may take some time to migrate to the new version.
  /// [clientCertificates] List of TLS certificates used to authorize clients connecting to the cluster. All connections are TLS encrypted whether clientCertificates is set or not, but if clientCertificates is set, the managed Cassandra cluster will reject all connections not bearing a TLS client certificate that can be validated from one or more of the public certificates in this property.
  /// [clusterNameOverride] If you need to set the clusterName property in cassandra.yaml to something besides the resource name of the cluster, set the value to use on this property.
  /// [deallocated] Whether the cluster and associated data centers has been deallocated.
  /// [delegatedManagementSubnetId] Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'
  /// [externalGossipCertificates] List of TLS certificates used to authorize gossip from unmanaged data centers. The TLS certificates of all nodes in unmanaged data centers must be verifiable using one of the certificates provided in this property.
  /// [externalSeedNodes] List of IP addresses of seed nodes in unmanaged data centers. These will be added to the seed node lists of all managed nodes.
  /// [hoursBetweenBackups] (Deprecated) Number of hours to wait between taking a backup of the cluster.
  /// [initialCassandraAdminPassword] Initial password for clients connecting as admin to the cluster. Should be changed after cluster creation. Returns null on GET. This field only applies when the authenticationMethod field is 'Cassandra'.
  /// [prometheusEndpoint] Hostname or IP address where the Prometheus endpoint containing data about the managed Cassandra nodes can be reached.
  /// [provisionError] Error related to resource provisioning.
  /// [provisioningState] The status of the resource at the time the operation was called.
  /// [repairEnabled] Should automatic repairs run on this cluster? If omitted, this is true, and should stay true unless you are running a hybrid cluster where you are already doing your own repairs.
  /// [restoreFromBackupId] To create an empty cluster, omit this field or set it to null. To restore a backup into a new cluster, set this field to the resource id of the backup.
  const ClusterResourceProperties({
    this.authenticationMethod,
    this.azureConnectionMethod,
    this.cassandraAuditLoggingEnabled,
    this.cassandraVersion,
    this.clientCertificates,
    this.clusterNameOverride,
    this.deallocated,
    this.delegatedManagementSubnetId,
    this.externalGossipCertificates,
    this.externalSeedNodes,
    this.hoursBetweenBackups,
    this.initialCassandraAdminPassword,
    this.prometheusEndpoint,
    this.provisionError,
    this.provisioningState,
    this.repairEnabled,
    this.restoreFromBackupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMethod': ?authenticationMethod,
      'azureConnectionMethod': ?azureConnectionMethod,
      'cassandraAuditLoggingEnabled': ?cassandraAuditLoggingEnabled,
      'cassandraVersion': ?cassandraVersion,
      'clientCertificates': ?pulumi.Input.mapOptionalInputValue<List<Certificate>, List<Map<String, dynamic>>>(clientCertificates, (value) => pulumi.Input.encodeList<Certificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterNameOverride': ?clusterNameOverride,
      'deallocated': ?deallocated,
      'delegatedManagementSubnetId': ?delegatedManagementSubnetId,
      'externalGossipCertificates': ?pulumi.Input.mapOptionalInputValue<List<Certificate>, List<Map<String, dynamic>>>(externalGossipCertificates, (value) => pulumi.Input.encodeList<Certificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'externalSeedNodes': ?pulumi.Input.mapOptionalInputValue<List<SeedNode>, List<Map<String, dynamic>>>(externalSeedNodes, (value) => pulumi.Input.encodeList<SeedNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hoursBetweenBackups': ?hoursBetweenBackups,
      'initialCassandraAdminPassword': ?initialCassandraAdminPassword,
      'prometheusEndpoint': ?pulumi.Input.mapOptionalInputValue<SeedNode, Map<String, dynamic>>(prometheusEndpoint, (value) => value.toMap()),
      'provisionError': ?pulumi.Input.mapOptionalInputValue<CassandraError, Map<String, dynamic>>(provisionError, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'repairEnabled': ?repairEnabled,
      'restoreFromBackupId': ?restoreFromBackupId,
    };
  }

  factory ClusterResourceProperties.fromMap(Map<String, dynamic> map) {
    return ClusterResourceProperties(
      authenticationMethod: (() { final guardedValue = map['authenticationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureConnectionMethod: (() { final guardedValue = map['azureConnectionMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      cassandraAuditLoggingEnabled: (() { final guardedValue = map['cassandraAuditLoggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cassandraVersion: (() { final guardedValue = map['cassandraVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificates: (() { final guardedValue = map['clientCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Certificate>(guardedValue, (value) => Certificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterNameOverride: (() { final guardedValue = map['clusterNameOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deallocated: (() { final guardedValue = map['deallocated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delegatedManagementSubnetId: (() { final guardedValue = map['delegatedManagementSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalGossipCertificates: (() { final guardedValue = map['externalGossipCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Certificate>(guardedValue, (value) => Certificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      externalSeedNodes: (() { final guardedValue = map['externalSeedNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SeedNode>(guardedValue, (value) => SeedNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hoursBetweenBackups: (() { final guardedValue = map['hoursBetweenBackups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      initialCassandraAdminPassword: (() { final guardedValue = map['initialCassandraAdminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prometheusEndpoint: (() { final guardedValue = map['prometheusEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SeedNode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisionError: (() { final guardedValue = map['provisionError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CassandraError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      repairEnabled: (() { final guardedValue = map['repairEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restoreFromBackupId: (() { final guardedValue = map['restoreFromBackupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
