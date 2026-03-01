// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'x509_certificate_name.dart';

/// Properties of the Service Fabric Type Backend.
class BackendServiceFabricClusterProperties {
  /// The client certificate id for the management endpoint.
  final String? clientCertificateId;
  /// The client certificate thumbprint for the management endpoint. Will be ignored if certificatesIds are provided
  final String? clientCertificatethumbprint;
  /// The cluster management endpoint.
  final List<String> managementEndpoints;
  /// Maximum number of retries while attempting resolve the partition.
  final int? maxPartitionResolutionRetries;
  /// Thumbprints of certificates cluster management service uses for tls communication
  final List<String>? serverCertificateThumbprints;
  /// Server X509 Certificate Names Collection
  final List<X509CertificateName>? serverX509Names;

  /// Creates a new [BackendServiceFabricClusterProperties].
  /// [clientCertificateId] The client certificate id for the management endpoint.
  /// [clientCertificatethumbprint] The client certificate thumbprint for the management endpoint. Will be ignored if certificatesIds are provided
  /// [managementEndpoints] The cluster management endpoint.
  /// [maxPartitionResolutionRetries] Maximum number of retries while attempting resolve the partition.
  /// [serverCertificateThumbprints] Thumbprints of certificates cluster management service uses for tls communication
  /// [serverX509Names] Server X509 Certificate Names Collection
  BackendServiceFabricClusterProperties({
    this.clientCertificateId,
    this.clientCertificatethumbprint,
    required this.managementEndpoints,
    this.maxPartitionResolutionRetries,
    this.serverCertificateThumbprints,
    this.serverX509Names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificateId': ?clientCertificateId,
      'clientCertificatethumbprint': ?clientCertificatethumbprint,
      'managementEndpoints': managementEndpoints,
      'maxPartitionResolutionRetries': ?maxPartitionResolutionRetries,
      'serverCertificateThumbprints': ?serverCertificateThumbprints,
      'serverX509Names': ?serverX509Names == null ? null : pulumi.Input.encodeList<X509CertificateName, Map<String, dynamic>>(serverX509Names!, (value) => value.toMap()),
    };
  }

  factory BackendServiceFabricClusterProperties.fromMap(Map<String, dynamic> map) {
    return BackendServiceFabricClusterProperties(
      clientCertificateId: map['clientCertificateId'] == null ? null : map['clientCertificateId'] as String,
      clientCertificatethumbprint: map['clientCertificatethumbprint'] == null ? null : map['clientCertificatethumbprint'] as String,
      managementEndpoints: (map['managementEndpoints'] as List).cast<String>(),
      maxPartitionResolutionRetries: map['maxPartitionResolutionRetries'] == null ? null : map['maxPartitionResolutionRetries'] as int,
      serverCertificateThumbprints: map['serverCertificateThumbprints'] == null ? null : (map['serverCertificateThumbprints'] as List).cast<String>(),
      serverX509Names: map['serverX509Names'] == null ? null : pulumi.Input.decodeList<X509CertificateName>(map['serverX509Names'], (value) => X509CertificateName.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

