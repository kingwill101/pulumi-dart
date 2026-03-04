// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_error_response.dart';
import 'certificate_response.dart';
import 'seed_node_response.dart';

/// Properties of a managed Cassandra cluster.
class ClusterResourceResponseProperties {
  /// Which authentication method Cassandra should use to authenticate clients. 'None' turns off authentication, so should not be used except in emergencies. 'Cassandra' is the default password based authentication. The default is 'Cassandra'.
  final pulumi.Input<String>? authenticationMethod;

  /// How to connect to the azure services needed for running the cluster
  final pulumi.Input<String>? azureConnectionMethod;

  /// Whether Cassandra audit logging is enabled
  final pulumi.Input<bool>? cassandraAuditLoggingEnabled;

  /// Which version of Cassandra should this cluster converge to running (e.g., 3.11). When updated, the cluster may take some time to migrate to the new version.
  final pulumi.Input<String>? cassandraVersion;

  /// List of TLS certificates used to authorize clients connecting to the cluster. All connections are TLS encrypted whether clientCertificates is set or not, but if clientCertificates is set, the managed Cassandra cluster will reject all connections not bearing a TLS client certificate that can be validated from one or more of the public certificates in this property.
  final pulumi.Input<List<CertificateResponse>>? clientCertificates;

  /// If you need to set the clusterName property in cassandra.yaml to something besides the resource name of the cluster, set the value to use on this property.
  final pulumi.Input<String>? clusterNameOverride;

  /// Whether the cluster and associated data centers has been deallocated.
  final pulumi.Input<bool>? deallocated;

  /// Resource id of a subnet that this cluster's management service should have its network interface attached to. The subnet must be routable to all subnets that will be delegated to data centers. The resource id must be of the form '/subscriptions/&lt;subscription id&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.Network/virtualNetworks/&lt;virtual network&gt;/subnets/&lt;subnet&gt;'
  final pulumi.Input<String>? delegatedManagementSubnetId;

  /// List of TLS certificates used to authorize gossip from unmanaged data centers. The TLS certificates of all nodes in unmanaged data centers must be verifiable using one of the certificates provided in this property.
  final pulumi.Input<List<CertificateResponse>>? externalGossipCertificates;

  /// List of IP addresses of seed nodes in unmanaged data centers. These will be added to the seed node lists of all managed nodes.
  final pulumi.Input<List<SeedNodeResponse>>? externalSeedNodes;

  /// List of TLS certificates that unmanaged nodes must trust for gossip with managed nodes. All managed nodes will present TLS client certificates that are verifiable using one of the certificates provided in this property.
  final pulumi.Input<List<CertificateResponse>> gossipCertificates;

  /// (Deprecated) Number of hours to wait between taking a backup of the cluster.
  final pulumi.Input<int>? hoursBetweenBackups;

  /// If the Connection Method is VPN, this is the Id of the private link resource that the datacenters need to connect to.
  final pulumi.Input<String> privateLinkResourceId;

  /// Hostname or IP address where the Prometheus endpoint containing data about the managed Cassandra nodes can be reached.
  final pulumi.Input<SeedNodeResponse>? prometheusEndpoint;

  /// Error related to resource provisioning.
  final pulumi.Input<CassandraErrorResponse>? provisionError;

  /// The status of the resource at the time the operation was called.
  final pulumi.Input<String>? provisioningState;

  /// Should automatic repairs run on this cluster? If omitted, this is true, and should stay true unless you are running a hybrid cluster where you are already doing your own repairs.
  final pulumi.Input<bool>? repairEnabled;

  /// List of IP addresses of seed nodes in the managed data centers. These should be added to the seed node lists of all unmanaged nodes.
  final pulumi.Input<List<SeedNodeResponse>> seedNodes;

  /// Creates a new [ClusterResourceResponseProperties].
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
      'clientCertificates':
          ?pulumi.Input.mapOptionalInputValue<
            List<CertificateResponse>,
            List<Map<String, dynamic>>
          >(
            clientCertificates,
            (value) =>
                pulumi.Input.encodeList<
                  CertificateResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'clusterNameOverride': ?clusterNameOverride,
      'deallocated': ?deallocated,
      'delegatedManagementSubnetId': ?delegatedManagementSubnetId,
      'externalGossipCertificates':
          ?pulumi.Input.mapOptionalInputValue<
            List<CertificateResponse>,
            List<Map<String, dynamic>>
          >(
            externalGossipCertificates,
            (value) =>
                pulumi.Input.encodeList<
                  CertificateResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'externalSeedNodes':
          ?pulumi.Input.mapOptionalInputValue<
            List<SeedNodeResponse>,
            List<Map<String, dynamic>>
          >(
            externalSeedNodes,
            (value) =>
                pulumi.Input.encodeList<SeedNodeResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'gossipCertificates':
          pulumi.Input.mapInputValue<
            List<CertificateResponse>,
            List<Map<String, dynamic>>
          >(
            gossipCertificates,
            (value) =>
                pulumi.Input.encodeList<
                  CertificateResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'hoursBetweenBackups': ?hoursBetweenBackups,
      'privateLinkResourceId': privateLinkResourceId,
      'prometheusEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            SeedNodeResponse,
            Map<String, dynamic>
          >(prometheusEndpoint, (value) => value.toMap()),
      'provisionError':
          ?pulumi.Input.mapOptionalInputValue<
            CassandraErrorResponse,
            Map<String, dynamic>
          >(provisionError, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'repairEnabled': ?repairEnabled,
      'seedNodes':
          pulumi.Input.mapInputValue<
            List<SeedNodeResponse>,
            List<Map<String, dynamic>>
          >(
            seedNodes,
            (value) =>
                pulumi.Input.encodeList<SeedNodeResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory ClusterResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return ClusterResourceResponseProperties(
      authenticationMethod: (() {
        final guardedValue = map['authenticationMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      azureConnectionMethod: (() {
        final guardedValue = map['azureConnectionMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cassandraAuditLoggingEnabled: (() {
        final guardedValue = map['cassandraAuditLoggingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cassandraVersion: (() {
        final guardedValue = map['cassandraVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCertificates: (() {
        final guardedValue = map['clientCertificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CertificateResponse>(
            guardedValue,
            (value) => CertificateResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      clusterNameOverride: (() {
        final guardedValue = map['clusterNameOverride'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deallocated: (() {
        final guardedValue = map['deallocated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      delegatedManagementSubnetId: (() {
        final guardedValue = map['delegatedManagementSubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalGossipCertificates: (() {
        final guardedValue = map['externalGossipCertificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CertificateResponse>(
            guardedValue,
            (value) => CertificateResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      externalSeedNodes: (() {
        final guardedValue = map['externalSeedNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SeedNodeResponse>(
            guardedValue,
            (value) => SeedNodeResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      gossipCertificates: pulumi.Input.fromValue(
        pulumi.Input.decodeList<CertificateResponse>(
          map['gossipCertificates']!,
          (value) => CertificateResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      hoursBetweenBackups: (() {
        final guardedValue = map['hoursBetweenBackups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      privateLinkResourceId: pulumi.Input.fromValue(
        map['privateLinkResourceId'] as String,
      ),
      prometheusEndpoint: (() {
        final guardedValue = map['prometheusEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SeedNodeResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisionError: (() {
        final guardedValue = map['provisionError'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CassandraErrorResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repairEnabled: (() {
        final guardedValue = map['repairEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      seedNodes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SeedNodeResponse>(
          map['seedNodes']!,
          (value) =>
              SeedNodeResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
