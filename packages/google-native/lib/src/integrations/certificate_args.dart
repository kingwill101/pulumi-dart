// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_status.dart';
import 'google_cloud_integrations_v1alpha_client_certificate.dart';

/// {@template pulumi_integrations_v1alpha_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_certificate_args_doc}
class CertificateArgs {
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

  /// Creates a new [CertificateArgs].
  /// [certificateStatus] Status of the certificate
  /// [credentialId] Immutable. Credential id that will be used to register with trawler INTERNAL_ONLY
  /// [description] Description of the certificate
  /// [displayName] Name of the certificate
  /// [location] Optional.
  /// [productId] Required.
  /// [project] Optional.
  /// [rawCertificate] Input only. Raw client certificate which would be registered with trawler
  /// [requestorId] Immutable. Requestor ID to be used to register certificate with trawler
  CertificateArgs({
    CertificateCertificateStatus? certificateStatus,
    String? credentialId,
    String? description,
    required String displayName,
    String? location,
    required String productId,
    String? project,
    GoogleCloudIntegrationsV1alphaClientCertificate? rawCertificate,
    String? requestorId,
  })  : certificateStatus =
            pulumi.Input.asOptionalInput<CertificateCertificateStatus>(
                certificateStatus),
        credentialId = pulumi.Input.asOptionalInput<String>(credentialId),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        location = pulumi.Input.asOptionalInput<String>(location),
        productId = pulumi.Input.asInput<String>(productId),
        project = pulumi.Input.asOptionalInput<String>(project),
        rawCertificate = pulumi.Input.asOptionalInput<
            GoogleCloudIntegrationsV1alphaClientCertificate>(rawCertificate),
        requestorId = pulumi.Input.asOptionalInput<String>(requestorId);

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

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateStatus: map['certificateStatus'] == null
          ? null
          : CertificateCertificateStatus.fromValue(
              map['certificateStatus'] as String),
      credentialId:
          map['credentialId'] == null ? null : map['credentialId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      productId: map['productId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rawCertificate: map['rawCertificate'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaClientCertificate.fromMap(
              (map['rawCertificate'] as Map).cast<String, dynamic>()),
      requestorId:
          map['requestorId'] == null ? null : map['requestorId'] as String,
    );
  }
}
