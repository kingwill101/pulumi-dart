// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_fabric_cluster_server_x509_name.dart';

class BackendServiceFabricCluster {
  /// The client certificate resource id for the management endpoint.
  ///
  /// > **Note:** At least one of `client_certificate_thumbprint`, and `client_certificate_id` must be set.
  final String? clientCertificateId;
  /// The client certificate thumbprint for the management endpoint.
  final String? clientCertificateThumbprint;
  /// A list of cluster management endpoints.
  final List<String> managementEndpoints;
  /// The maximum number of retries when attempting resolve the partition.
  final int maxPartitionResolutionRetries;
  /// A list of thumbprints of the server certificates of the Service Fabric cluster.
  final List<String>? serverCertificateThumbprints;
  /// One or more `server_x509_name` blocks as documented below.
  final List<BackendServiceFabricClusterServerX509Name>? serverX509Names;

  /// Creates a new [BackendServiceFabricCluster].
  /// [clientCertificateId] The client certificate resource id for the management endpoint.
  /// [clientCertificateThumbprint] The client certificate thumbprint for the management endpoint.
  /// [managementEndpoints] A list of cluster management endpoints.
  /// [maxPartitionResolutionRetries] The maximum number of retries when attempting resolve the partition.
  /// [serverCertificateThumbprints] A list of thumbprints of the server certificates of the Service Fabric cluster.
  /// [serverX509Names] One or more `server_x509_name` blocks as documented below.
  BackendServiceFabricCluster({
    this.clientCertificateId,
    this.clientCertificateThumbprint,
    required this.managementEndpoints,
    required this.maxPartitionResolutionRetries,
    this.serverCertificateThumbprints,
    this.serverX509Names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificateId': ?clientCertificateId,
      'clientCertificateThumbprint': ?clientCertificateThumbprint,
      'managementEndpoints': managementEndpoints,
      'maxPartitionResolutionRetries': maxPartitionResolutionRetries,
      'serverCertificateThumbprints': ?serverCertificateThumbprints,
      'serverX509Names': ?serverX509Names == null ? null : pulumi.Input.encodeList<BackendServiceFabricClusterServerX509Name, Map<String, dynamic>>(serverX509Names!, (value) => value.toMap()),
    };
  }

  factory BackendServiceFabricCluster.fromMap(Map<String, dynamic> map) {
    return BackendServiceFabricCluster(
      clientCertificateId: map['clientCertificateId'] == null ? null : map['clientCertificateId'] as String,
      clientCertificateThumbprint: map['clientCertificateThumbprint'] == null ? null : map['clientCertificateThumbprint'] as String,
      managementEndpoints: (map['managementEndpoints'] as List).cast<String>(),
      maxPartitionResolutionRetries: map['maxPartitionResolutionRetries'] as int,
      serverCertificateThumbprints: map['serverCertificateThumbprints'] == null ? null : (map['serverCertificateThumbprints'] as List).cast<String>(),
      serverX509Names: map['serverX509Names'] == null ? null : pulumi.Input.decodeList<BackendServiceFabricClusterServerX509Name>(map['serverX509Names'], (value) => BackendServiceFabricClusterServerX509Name.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

