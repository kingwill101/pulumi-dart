// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_client_certificate_response.dart';

/// Result data returned by getCertificate.
class GetCertificateResult2 {
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

  GetCertificateResult2({
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
    final map = <String, dynamic>{};
    map['certificateStatus'] = certificateStatus;
    map['credentialId'] = credentialId;
    map['description'] = description;
    map['displayName'] = displayName;
    map['name'] = name;
    map['rawCertificate'] = rawCertificate.toMap();
    map['requestorId'] = requestorId;
    map['validEndTime'] = validEndTime;
    map['validStartTime'] = validStartTime;
    return map;
  }

  factory GetCertificateResult2.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult2(
      certificateStatus: map['certificateStatus'] as String,
      credentialId: map['credentialId'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      rawCertificate:
          GoogleCloudIntegrationsV1alphaClientCertificateResponse.fromMap(
              (map['rawCertificate'] as Map).cast<String, dynamic>()),
      requestorId: map['requestorId'] as String,
      validEndTime: map['validEndTime'] as String,
      validStartTime: map['validStartTime'] as String,
    );
  }
}
