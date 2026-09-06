// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'x509_certificate_name_response.dart';

/// Properties of the Service Fabric Type Backend.
class BackendServiceFabricClusterPropertiesResponse {
  /// The client certificate id for the management endpoint.
  final pulumi.Input<String?>? clientCertificateId;
  /// The client certificate thumbprint for the management endpoint. Will be ignored if certificatesIds are provided
  final pulumi.Input<String?>? clientCertificatethumbprint;
  /// The cluster management endpoint.
  final pulumi.Input<List<String>> managementEndpoints;
  /// Maximum number of retries while attempting resolve the partition.
  final pulumi.Input<int?>? maxPartitionResolutionRetries;
  /// Thumbprints of certificates cluster management service uses for tls communication
  final pulumi.Input<List<String>?>? serverCertificateThumbprints;
  /// Server X509 Certificate Names Collection
  final pulumi.Input<List<X509CertificateNameResponse>?>? serverX509Names;

  /// Creates a new [BackendServiceFabricClusterPropertiesResponse].
  /// [clientCertificateId] The client certificate id for the management endpoint.
  /// [clientCertificatethumbprint] The client certificate thumbprint for the management endpoint. Will be ignored if certificatesIds are provided
  /// [managementEndpoints] The cluster management endpoint.
  /// [maxPartitionResolutionRetries] Maximum number of retries while attempting resolve the partition.
  /// [serverCertificateThumbprints] Thumbprints of certificates cluster management service uses for tls communication
  /// [serverX509Names] Server X509 Certificate Names Collection
  const BackendServiceFabricClusterPropertiesResponse({
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
      clientCertificateId: (() { final guardedValue = map['clientCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificatethumbprint: (() { final guardedValue = map['clientCertificatethumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementEndpoints: pulumi.Input.fromValue((map['managementEndpoints'] as List).cast<String>()),
      maxPartitionResolutionRetries: (() { final guardedValue = map['maxPartitionResolutionRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      serverCertificateThumbprints: (() { final guardedValue = map['serverCertificateThumbprints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serverX509Names: (() { final guardedValue = map['serverX509Names']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<X509CertificateNameResponse>(guardedValue, (value) => X509CertificateNameResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
