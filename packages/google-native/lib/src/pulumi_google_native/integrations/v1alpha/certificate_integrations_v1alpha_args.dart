// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_status.dart';
import 'google_cloud_integrations_v1alpha_client_certificate.dart';

/// The set of arguments for Certificate.
class CertificateIntegrationsV1alphaArgs {
  /// Status of the certificate
  final pulumi.Input<CertificateCertificateStatus>? certificateStatus;

  /// Immutable. Credential id that will be used to register with trawler INTERNAL_ONLY
  final pulumi.Input<String>? credentialId;

  /// Description of the certificate
  final pulumi.Input<String>? description;

  /// Name of the certificate
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// Input only. Raw client certificate which would be registered with trawler
  final pulumi.Input<GoogleCloudIntegrationsV1alphaClientCertificate>?
      rawCertificate;

  /// Immutable. Requestor ID to be used to register certificate with trawler
  final pulumi.Input<String>? requestorId;

  CertificateIntegrationsV1alphaArgs({
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
      map['certificateStatus'] = pulumi.Input.mapOptionalInputValue<
          CertificateCertificateStatus,
          String>(certificateStatusValue, (value) => value.value);
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
      map['rawCertificate'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudIntegrationsV1alphaClientCertificate,
          Map<String, dynamic>>(rawCertificateValue, (value) => value.toMap());
    }
    final requestorIdValue = requestorId;
    if (requestorIdValue != null) {
      map['requestorId'] = requestorIdValue;
    }
    return map;
  }

  factory CertificateIntegrationsV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return CertificateIntegrationsV1alphaArgs(
      certificateStatus:
          pulumi.Input.asOptionalInput<CertificateCertificateStatus>(
              map['certificateStatus']),
      credentialId: pulumi.Input.asOptionalInput<String>(map['credentialId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rawCertificate: pulumi.Input.asOptionalInput<
              GoogleCloudIntegrationsV1alphaClientCertificate>(
          map['rawCertificate']),
      requestorId: pulumi.Input.asOptionalInput<String>(map['requestorId']),
    );
  }
}
