// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_error_response.dart';
import 'certificate_response.dart';
import 'seed_node_response.dart';

/// Properties of a managed Cassandra cluster.
class ClusterResourceResponseProperties {
  /// Which authentication method Cassandra should use to authenticate clients. 'None' turns off authentication, so should not be used except in emergencies. 'Cassandra' is the default password based authentication. The default is 'Cassandra'.
  final String? authenticationMethod;
  /// How to connect to the azure services needed for running the cluster
  final String? azureConnectionMethod;
  /// Whether Cassandra audit logging is enabled
  final bool? cassandraAuditLoggingEnabled;
  /// Which version of Cassandra should this cluster converge to running (e.g., 3.11). When updated, the cluster may take some time to migrate to the new version.
  final String? cassandraVersion;
  /// List of TLS certificates used to authorize clients connecting to the cluster. All connections are TLS encrypted whether clientCertificates is set or not, but if clientCertificates is set, the managed Cassandra cluster will reject all connections not bearing a TLS client certificate that can be validated from one or more of the public certificates in this property.
  final List<CertificateResponse>? clientCertificates;
  /// If you need to set the clusterName property in cassandra.yaml to something besides the resource name of the cluster, set the value to use on this property.
  final String? clusterNameOverride;
  /// Whether the cluster and associated data centers has been deallocated.
  final bool? deallocated;
  /// Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/<subscription id>/resourceGroups/<resource group>/providers/Microsoft.Network/virtualNetworks/<virtual network>/subnets/<subnet>'
  final String? delegatedManagementSubnetId;
  /// List of TLS certificates used to authorize gossip from unmanaged data centers. The TLS certificates of all nodes in unmanaged data centers must be verifiable using one of the certificates provided in this property.
  final List<CertificateResponse>? externalGossipCertificates;
  /// List of IP addresses of seed nodes in unmanaged data centers. These will be added to the seed node lists of all managed nodes.
  final List<SeedNodeResponse>? externalSeedNodes;
  /// List of TLS certificates that unmanaged nodes must trust for gossip with managed nodes. All managed nodes will present TLS client certificates that are verifiable using one of the certificates provided in this property.
  final List<CertificateResponse> gossipCertificates;
  /// (Deprecated) Number of hours to wait between taking a backup of the cluster.
  final int? hoursBetweenBackups;
  /// If the Connection Method is VPN, this is the Id of the private link resource that the datacenters need to connect to.
  final String privateLinkResourceId;
  /// Hostname or IP address where the Prometheus endpoint containing data about the managed Cassandra nodes can be reached.
  final SeedNodeResponse? prometheusEndpoint;
  /// Error related to resource provisioning.
  final CassandraErrorResponse? provisionError;
  /// The status of the resource at the time the operation was called.
  final String? provisioningState;
  /// Should automatic repairs run on this cluster? If omitted, this is true, and should stay true unless you are running a hybrid cluster where you are already doing your own repairs.
  final bool? repairEnabled;
  /// List of IP addresses of seed nodes in the managed data centers. These should be added to the seed node lists of all unmanaged nodes.
  final List<SeedNodeResponse> seedNodes;

  /// Creates a new [ClusterResourceResponseProperties].
  /// [authenticationMethod] Which authentication method Cassandra should use to authenticate clients. 'None' turns off authentication, so should not be used except in emergencies. 'Cassandra' is the default password based authentication. The default is 'Cassandra'.
  /// [azureConnectionMethod] How to connect to the azure services needed for running the cluster
  /// [cassandraAuditLoggingEnabled] Whether Cassandra audit logging is enabled
  /// [cassandraVersion] Which version of Cassandra should this cluster converge to running (e.g., 3.11). When updated, the cluster may take some time to migrate to the new version.
  /// [clientCertificates] List of TLS certificates used to authorize clients connecting to the cluster. All connections are TLS encrypted whether clientCertificates is set or not, but if clientCertificates is set, the managed Cassandra cluster will reject all connections not bearing a TLS client certificate that can be validated from one or more of the public certificates in this property.
  /// [clusterNameOverride] If you need to set the clusterName property in cassandra.yaml to something besides the resource name of the cluster, set the value to use on this property.
  /// [deallocated] Whether the cluster and associated data centers has been deallocated.
  /// [delegatedManagementSubnetId] Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/<subscription id>/resourceGroups/<resource group>/providers/Microsoft.Network/virtualNetworks/<virtual network>/subnets/<subnet>'
  /// [externalGossipCertificates] List of TLS certificates used to authorize gossip from unmanaged data centers. The TLS certificates of all nodes in unmanaged data centers must be verifiable using one of the certificates provided in this property.
  /// [externalSeedNodes] List of IP addresses of seed nodes in unmanaged data centers. These will be added to the seed node lists of all managed nodes.
  /// [gossipCertificates] List of TLS certificates that unmanaged nodes must trust for gossip with managed nodes. All managed nodes will present TLS client certificates that are verifiable using one of the certificates provided in this property.
  /// [hoursBetweenBackups] (Deprecated) Number of hours to wait between taking a backup of the cluster.
  /// [privateLinkResourceId] If the Connection Method is VPN, this is the Id of the private link resource that the datacenters need to connect to.
  /// [prometheusEndpoint] Hostname or IP address where the Prometheus endpoint containing data about the managed Cassandra nodes can be reached.
  /// [provisionError] Error related to resource provisioning.
  /// [provisioningState] The status of the resource at the time the operation was called.
  /// [repairEnabled] Should automatic repairs run on this cluster? If omitted, this is true, and should stay true unless you are running a hybrid cluster where you are already doing your own repairs.
  /// [seedNodes] List of IP addresses of seed nodes in the managed data centers. These should be added to the seed node lists of all unmanaged nodes.
  ClusterResourceResponseProperties({
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
    required this.gossipCertificates,
    this.hoursBetweenBackups,
    required this.privateLinkResourceId,
    this.prometheusEndpoint,
    this.provisionError,
    this.provisioningState,
    this.repairEnabled,
    required this.seedNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMethod': ?authenticationMethod,
      'azureConnectionMethod': ?azureConnectionMethod,
      'cassandraAuditLoggingEnabled': ?cassandraAuditLoggingEnabled,
      'cassandraVersion': ?cassandraVersion,
      'clientCertificates': ?clientCertificates == null ? null : pulumi.Input.encodeList<CertificateResponse, Map<String, dynamic>>(clientCertificates!, (value) => value.toMap()),
      'clusterNameOverride': ?clusterNameOverride,
      'deallocated': ?deallocated,
      'delegatedManagementSubnetId': ?delegatedManagementSubnetId,
      'externalGossipCertificates': ?externalGossipCertificates == null ? null : pulumi.Input.encodeList<CertificateResponse, Map<String, dynamic>>(externalGossipCertificates!, (value) => value.toMap()),
      'externalSeedNodes': ?externalSeedNodes == null ? null : pulumi.Input.encodeList<SeedNodeResponse, Map<String, dynamic>>(externalSeedNodes!, (value) => value.toMap()),
      'gossipCertificates': pulumi.Input.encodeList<CertificateResponse, Map<String, dynamic>>(gossipCertificates, (value) => value.toMap()),
      'hoursBetweenBackups': ?hoursBetweenBackups,
      'privateLinkResourceId': privateLinkResourceId,
      'prometheusEndpoint': ?prometheusEndpoint == null ? null : prometheusEndpoint!.toMap(),
      'provisionError': ?provisionError == null ? null : provisionError!.toMap(),
      'provisioningState': ?provisioningState,
      'repairEnabled': ?repairEnabled,
      'seedNodes': pulumi.Input.encodeList<SeedNodeResponse, Map<String, dynamic>>(seedNodes, (value) => value.toMap()),
    };
  }

  factory ClusterResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return ClusterResourceResponseProperties(
      authenticationMethod: map['authenticationMethod'] == null ? null : map['authenticationMethod'] as String,
      azureConnectionMethod: map['azureConnectionMethod'] == null ? null : map['azureConnectionMethod'] as String,
      cassandraAuditLoggingEnabled: map['cassandraAuditLoggingEnabled'] == null ? null : map['cassandraAuditLoggingEnabled'] as bool,
      cassandraVersion: map['cassandraVersion'] == null ? null : map['cassandraVersion'] as String,
      clientCertificates: map['clientCertificates'] == null ? null : pulumi.Input.decodeList<CertificateResponse>(map['clientCertificates'], (value) => CertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      clusterNameOverride: map['clusterNameOverride'] == null ? null : map['clusterNameOverride'] as String,
      deallocated: map['deallocated'] == null ? null : map['deallocated'] as bool,
      delegatedManagementSubnetId: map['delegatedManagementSubnetId'] == null ? null : map['delegatedManagementSubnetId'] as String,
      externalGossipCertificates: map['externalGossipCertificates'] == null ? null : pulumi.Input.decodeList<CertificateResponse>(map['externalGossipCertificates'], (value) => CertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      externalSeedNodes: map['externalSeedNodes'] == null ? null : pulumi.Input.decodeList<SeedNodeResponse>(map['externalSeedNodes'], (value) => SeedNodeResponse.fromMap((value as Map).cast<String, dynamic>())),
      gossipCertificates: pulumi.Input.decodeList<CertificateResponse>(map['gossipCertificates'], (value) => CertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      hoursBetweenBackups: map['hoursBetweenBackups'] == null ? null : map['hoursBetweenBackups'] as int,
      privateLinkResourceId: map['privateLinkResourceId'] as String,
      prometheusEndpoint: map['prometheusEndpoint'] == null ? null : SeedNodeResponse.fromMap((map['prometheusEndpoint'] as Map).cast<String, dynamic>()),
      provisionError: map['provisionError'] == null ? null : CassandraErrorResponse.fromMap((map['provisionError'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      repairEnabled: map['repairEnabled'] == null ? null : map['repairEnabled'] as bool,
      seedNodes: pulumi.Input.decodeList<SeedNodeResponse>(map['seedNodes'], (value) => SeedNodeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

