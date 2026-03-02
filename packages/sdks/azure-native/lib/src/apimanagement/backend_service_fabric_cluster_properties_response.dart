// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'x509_certificate_name_response.dart';

/// Properties of the Service Fabric Type Backend.
class BackendServiceFabricClusterPropertiesResponse {
  /// The client certificate id for the management endpoint.
  final pulumi.Input<String>? clientCertificateId;
  /// The client certificate thumbprint for the management endpoint. Will be ignored if certificatesIds are provided
  final pulumi.Input<String>? clientCertificatethumbprint;
  /// The cluster management endpoint.
  final pulumi.Input<List<String>> managementEndpoints;
  /// Maximum number of retries while attempting resolve the partition.
  final pulumi.Input<int>? maxPartitionResolutionRetries;
  /// Thumbprints of certificates cluster management service uses for tls communication
  final pulumi.Input<List<String>>? serverCertificateThumbprints;
  /// Server X509 Certificate Names Collection
  final pulumi.Input<List<X509CertificateNameResponse>>? serverX509Names;

  /// Creates a new [BackendServiceFabricClusterPropertiesResponse].
  /// [clientCertificateId] The client certificate id for the management endpoint.
  /// [clientCertificatethumbprint] The client certificate thumbprint for the management endpoint. Will be ignored if certificatesIds are provided
  /// [managementEndpoints] The cluster management endpoint.
  /// [maxPartitionResolutionRetries] Maximum number of retries while attempting resolve the partition.
  /// [serverCertificateThumbprints] Thumbprints of certificates cluster management service uses for tls communication
  /// [serverX509Names] Server X509 Certificate Names Collection
  BackendServiceFabricClusterPropertiesResponse({
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
      'serverX509Names': ?pulumi.Input.mapOptionalInputValue<List<X509CertificateNameResponse>, List<Map<String, dynamic>>>(serverX509Names, (value) => pulumi.Input.encodeList<X509CertificateNameResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackendServiceFabricClusterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BackendServiceFabricClusterPropertiesResponse(
      clientCertificateId: map['clientCertificateId'] == null ? null : (map['clientCertificateId']! as String).input(),
      clientCertificatethumbprint: map['clientCertificatethumbprint'] == null ? null : (map['clientCertificatethumbprint']! as String).input(),
      managementEndpoints: ((map['managementEndpoints'] as List).cast<String>()).input(),
      maxPartitionResolutionRetries: map['maxPartitionResolutionRetries'] == null ? null : (map['maxPartitionResolutionRetries']! as int).input(),
      serverCertificateThumbprints: map['serverCertificateThumbprints'] == null ? null : ((map['serverCertificateThumbprints']! as List).cast<String>()).input(),
      serverX509Names: map['serverX509Names'] == null ? null : (pulumi.Input.decodeList<X509CertificateNameResponse>(map['serverX509Names']!, (value) => X509CertificateNameResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

