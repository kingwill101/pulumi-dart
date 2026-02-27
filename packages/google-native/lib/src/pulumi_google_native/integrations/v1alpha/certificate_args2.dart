// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'certificate_certificate_status.dart';
import 'google_cloud_integrations_v1alpha_client_certificate.dart';

/// The set of arguments for Certificate.
class CertificateArgs2 {
  /// Status of the certificate
  final Input<CertificateCertificateStatus>? certificateStatus;

  /// Immutable. Credential id that will be used to register with trawler INTERNAL_ONLY
  final Input<String>? credentialId;

  /// Description of the certificate
  final Input<String>? description;

  /// Name of the certificate
  final Input<String> displayName;
  final Input<String>? location;
  final Input<String> productId;
  final Input<String>? project;

  /// Input only. Raw client certificate which would be registered with trawler
  final Input<GoogleCloudIntegrationsV1alphaClientCertificate>? rawCertificate;

  /// Immutable. Requestor ID to be used to register certificate with trawler
  final Input<String>? requestorId;

  CertificateArgs2({
    this.certificateStatus,
    this.credentialId,
    this.description,
    required this.displayName,
    this.location,
    required this.productId,
    this.project,
    this.rawCertificate,
    this.requestorId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateStatusValue = certificateStatus;
    if (certificateStatusValue != null) {
      map['certificateStatus'] =
          Input.mapOptionalInputValue<CertificateCertificateStatus, String>(
              certificateStatusValue, (value) => value.value);
    }
    final credentialIdValue = credentialId;
    if (credentialIdValue != null) {
      map['credentialId'] = credentialIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rawCertificateValue = rawCertificate;
    if (rawCertificateValue != null) {
      map['rawCertificate'] = Input.mapOptionalInputValue<
          GoogleCloudIntegrationsV1alphaClientCertificate,
          Map<String, dynamic>>(rawCertificateValue, (value) => value.toMap());
    }
    final requestorIdValue = requestorId;
    if (requestorIdValue != null) {
      map['requestorId'] = requestorIdValue;
    }
    return map;
  }

  factory CertificateArgs2.fromMap(Map<String, dynamic> map) {
    return CertificateArgs2(
      certificateStatus: Input.asOptionalInput<CertificateCertificateStatus>(
          map['certificateStatus']),
      credentialId: Input.asOptionalInput<String>(map['credentialId']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
      rawCertificate: Input.asOptionalInput<
              GoogleCloudIntegrationsV1alphaClientCertificate>(
          map['rawCertificate']),
      requestorId: Input.asOptionalInput<String>(map['requestorId']),
    );
  }
}
