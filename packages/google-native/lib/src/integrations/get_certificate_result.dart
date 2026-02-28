// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_client_certificate_response.dart';

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// Status of the certificate
  final String certificateStatus;
  /// Immutable. Credential id that will be used to register with trawler INTERNAL_ONLY
  final String credentialId;
  /// Description of the certificate
  final String description;
  /// Name of the certificate
  final String displayName;
  /// Auto generated primary key
  final String name;
  /// Input only. Raw client certificate which would be registered with trawler
  final GoogleCloudIntegrationsV1alphaClientCertificateResponse rawCertificate;
  /// Immutable. Requestor ID to be used to register certificate with trawler
  final String requestorId;
  /// The timestamp after which certificate will expire
  final String validEndTime;
  /// The timestamp after which certificate will be valid
  final String validStartTime;

  /// Creates a new [GetCertificateResult].
  /// [certificateStatus] Status of the certificate
  /// [credentialId] Immutable. Credential id that will be used to register with trawler INTERNAL_ONLY
  /// [description] Description of the certificate
  /// [displayName] Name of the certificate
  /// [name] Auto generated primary key
  /// [rawCertificate] Input only. Raw client certificate which would be registered with trawler
  /// [requestorId] Immutable. Requestor ID to be used to register certificate with trawler
  /// [validEndTime] The timestamp after which certificate will expire
  /// [validStartTime] The timestamp after which certificate will be valid
  GetCertificateResult({
    required this.certificateStatus,
    required this.credentialId,
    required this.description,
    required this.displayName,
    required this.name,
    required this.rawCertificate,
    required this.requestorId,
    required this.validEndTime,
    required this.validStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateStatus': certificateStatus,
      'credentialId': credentialId,
      'description': description,
      'displayName': displayName,
      'name': name,
      'rawCertificate': rawCertificate.toMap(),
      'requestorId': requestorId,
      'validEndTime': validEndTime,
      'validStartTime': validStartTime,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificateStatus: map['certificateStatus'] as String,
      credentialId: map['credentialId'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      rawCertificate: GoogleCloudIntegrationsV1alphaClientCertificateResponse.fromMap((map['rawCertificate'] as Map).cast<String, dynamic>()),
      requestorId: map['requestorId'] as String,
      validEndTime: map['validEndTime'] as String,
      validStartTime: map['validStartTime'] as String,
    );
  }
}

