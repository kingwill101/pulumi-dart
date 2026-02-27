// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'certificate_config.dart';
import 'certificate_subject_mode.dart';

/// The set of arguments for Certificate.
class CertificateArgs3 {
  final Input<String> caPoolId;

  /// Optional. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`. This field is required when using a CertificateAuthority in the Enterprise CertificateAuthority.Tier, but is optional and its value is ignored otherwise.
  final Input<String>? certificateId;

  /// Immutable. The resource name for a CertificateTemplate used to issue this certificate, in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified, the caller must have the necessary permission to use this template. If this is omitted, no template will be used. This template must be in the same location as the Certificate.
  final Input<String>? certificateTemplate;

  /// Immutable. A description of the certificate and key that does not require X.509 or ASN.1.
  final Input<CertificateConfig>? config;

  /// Optional. The resource ID of the CertificateAuthority that should issue the certificate. This optional field will ignore the load-balancing scheme of the Pool and directly issue the certificate from the CA with the specified ID, contained in the same CaPool referenced by `parent`. Per-CA quota rules apply. If left empty, a CertificateAuthority will be chosen from the CaPool by the service. For example, to issue a Certificate from a Certificate Authority with resource name "projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca", you can set the parent to "projects/my-project/locations/us-central1/caPools/my-pool" and the issuing_certificate_authority_id to "my-ca".
  final Input<String>? issuingCertificateAuthorityId;

  /// Optional. Labels with user-defined metadata.
  final Input<Map<String, String>>? labels;

  /// Immutable. The desired lifetime of a certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate. Note that the lifetime may be truncated if it would extend past the life of any certificate authority in the issuing chain.
  final Input<String> lifetime;
  final Input<String>? location;

  /// Immutable. A pem-encoded X.509 certificate signing request (CSR).
  final Input<String>? pemCsr;
  final Input<String>? project;

  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Immutable. Specifies how the Certificate's identity fields are to be decided. If this is omitted, the `DEFAULT` subject mode will be used.
  final Input<CertificateSubjectMode>? subjectMode;

  CertificateArgs3({
    required this.caPoolId,
    this.certificateId,
    this.certificateTemplate,
    this.config,
    this.issuingCertificateAuthorityId,
    this.labels,
    required this.lifetime,
    this.location,
    this.pemCsr,
    this.project,
    this.requestId,
    this.subjectMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPoolId'] = caPoolId;
    final certificateIdValue = certificateId;
    if (certificateIdValue != null) {
      map['certificateId'] = certificateIdValue;
    }
    final certificateTemplateValue = certificateTemplate;
    if (certificateTemplateValue != null) {
      map['certificateTemplate'] = certificateTemplateValue;
    }
    final configValue = config;
    if (configValue != null) {
      map['config'] =
          Input.mapOptionalInputValue<CertificateConfig, Map<String, dynamic>>(
              configValue, (value) => value.toMap());
    }
    final issuingCertificateAuthorityIdValue = issuingCertificateAuthorityId;
    if (issuingCertificateAuthorityIdValue != null) {
      map['issuingCertificateAuthorityId'] = issuingCertificateAuthorityIdValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['lifetime'] = lifetime;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final pemCsrValue = pemCsr;
    if (pemCsrValue != null) {
      map['pemCsr'] = pemCsrValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final subjectModeValue = subjectMode;
    if (subjectModeValue != null) {
      map['subjectMode'] =
          Input.mapOptionalInputValue<CertificateSubjectMode, String>(
              subjectModeValue, (value) => value.value);
    }
    return map;
  }

  factory CertificateArgs3.fromMap(Map<String, dynamic> map) {
    return CertificateArgs3(
      caPoolId: Input.asInput<String>(map['caPoolId']),
      certificateId: Input.asOptionalInput<String>(map['certificateId']),
      certificateTemplate:
          Input.asOptionalInput<String>(map['certificateTemplate']),
      config: Input.asOptionalInput<CertificateConfig>(map['config']),
      issuingCertificateAuthorityId:
          Input.asOptionalInput<String>(map['issuingCertificateAuthorityId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lifetime: Input.asInput<String>(map['lifetime']),
      location: Input.asOptionalInput<String>(map['location']),
      pemCsr: Input.asOptionalInput<String>(map['pemCsr']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      subjectMode:
          Input.asOptionalInput<CertificateSubjectMode>(map['subjectMode']),
    );
  }
}
