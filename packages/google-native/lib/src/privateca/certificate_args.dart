// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_config.dart';
import 'certificate_subject_mode.dart';

/// {@template pulumi_privateca_v1_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_certificate_args_doc}
class CertificateArgs {
  final pulumi.Input<String> caPoolId;
  /// Optional. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`. This field is required when using a CertificateAuthority in the Enterprise CertificateAuthority.Tier, but is optional and its value is ignored otherwise.
  final pulumi.Input<String>? certificateId;
  /// Immutable. The resource name for a CertificateTemplate used to issue this certificate, in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified, the caller must have the necessary permission to use this template. If this is omitted, no template will be used. This template must be in the same location as the Certificate.
  final pulumi.Input<String>? certificateTemplate;
  /// Immutable. A description of the certificate and key that does not require X.509 or ASN.1.
  final pulumi.Input<CertificateConfig>? config;
  /// Optional. The resource ID of the CertificateAuthority that should issue the certificate. This optional field will ignore the load-balancing scheme of the Pool and directly issue the certificate from the CA with the specified ID, contained in the same CaPool referenced by `parent`. Per-CA quota rules apply. If left empty, a CertificateAuthority will be chosen from the CaPool by the service. For example, to issue a Certificate from a Certificate Authority with resource name "projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca", you can set the parent to "projects/my-project/locations/us-central1/caPools/my-pool" and the issuing_certificate_authority_id to "my-ca".
  final pulumi.Input<String>? issuingCertificateAuthorityId;
  /// Optional. Labels with user-defined metadata.
  final pulumi.Input<Map<String, String>>? labels;
  /// Immutable. The desired lifetime of a certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate. Note that the lifetime may be truncated if it would extend past the life of any certificate authority in the issuing chain.
  final pulumi.Input<String> lifetime;
  final pulumi.Input<String>? location;
  /// Immutable. A pem-encoded X.509 certificate signing request (CSR).
  final pulumi.Input<String>? pemCsr;
  final pulumi.Input<String>? project;
  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Immutable. Specifies how the Certificate's identity fields are to be decided. If this is omitted, the `DEFAULT` subject mode will be used.
  final pulumi.Input<CertificateSubjectMode>? subjectMode;

  /// Creates a new [CertificateArgs].
  /// [caPoolId] Required.
  /// [certificateId] Optional. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`. This field is required when using a CertificateAuthority in the Enterprise CertificateAuthority.Tier, but is optional and its value is ignored otherwise.
  /// [certificateTemplate] Immutable. The resource name for a CertificateTemplate used to issue this certificate, in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified, the caller must have the necessary permission to use this template. If this is omitted, no template will be used. This template must be in the same location as the Certificate.
  /// [config] Immutable. A description of the certificate and key that does not require X.509 or ASN.1.
  /// [issuingCertificateAuthorityId] Optional. The resource ID of the CertificateAuthority that should issue the certificate. This optional field will ignore the load-balancing scheme of the Pool and directly issue the certificate from the CA with the specified ID, contained in the same CaPool referenced by `parent`. Per-CA quota rules apply. If left empty, a CertificateAuthority will be chosen from the CaPool by the service. For example, to issue a Certificate from a Certificate Authority with resource name "projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca", you can set the parent to "projects/my-project/locations/us-central1/caPools/my-pool" and the issuing_certificate_authority_id to "my-ca".
  /// [labels] Optional. Labels with user-defined metadata.
  /// [lifetime] Immutable. The desired lifetime of a certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate. Note that the lifetime may be truncated if it would extend past the life of any certificate authority in the issuing chain.
  /// [location] Optional.
  /// [pemCsr] Immutable. A pem-encoded X.509 certificate signing request (CSR).
  /// [project] Optional.
  /// [requestId] Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [subjectMode] Immutable. Specifies how the Certificate's identity fields are to be decided. If this is omitted, the `DEFAULT` subject mode will be used.
  CertificateArgs({
    required String caPoolId,
    String? certificateId,
    String? certificateTemplate,
    CertificateConfig? config,
    String? issuingCertificateAuthorityId,
    Map<String, String>? labels,
    required String lifetime,
    String? location,
    String? pemCsr,
    String? project,
    String? requestId,
    CertificateSubjectMode? subjectMode,
  }) :
      caPoolId = pulumi.Input.asInput<String>(caPoolId),
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      certificateTemplate = pulumi.Input.asOptionalInput<String>(certificateTemplate),
      config = pulumi.Input.asOptionalInput<CertificateConfig>(config),
      issuingCertificateAuthorityId = pulumi.Input.asOptionalInput<String>(issuingCertificateAuthorityId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lifetime = pulumi.Input.asInput<String>(lifetime),
      location = pulumi.Input.asOptionalInput<String>(location),
      pemCsr = pulumi.Input.asOptionalInput<String>(pemCsr),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      subjectMode = pulumi.Input.asOptionalInput<CertificateSubjectMode>(subjectMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPoolId': caPoolId,
      'certificateId': ?certificateId,
      'certificateTemplate': ?certificateTemplate,
      'config': ?pulumi.Input.mapOptionalInputValue<CertificateConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'issuingCertificateAuthorityId': ?issuingCertificateAuthorityId,
      'labels': ?labels,
      'lifetime': lifetime,
      'location': ?location,
      'pemCsr': ?pemCsr,
      'project': ?project,
      'requestId': ?requestId,
      'subjectMode': ?pulumi.Input.mapOptionalInputValue<CertificateSubjectMode, String>(subjectMode, (value) => value.value),
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      caPoolId: map['caPoolId'] as String,
      certificateId: map['certificateId'] == null ? null : map['certificateId'] as String,
      certificateTemplate: map['certificateTemplate'] == null ? null : map['certificateTemplate'] as String,
      config: map['config'] == null ? null : CertificateConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
      issuingCertificateAuthorityId: map['issuingCertificateAuthorityId'] == null ? null : map['issuingCertificateAuthorityId'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      lifetime: map['lifetime'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      pemCsr: map['pemCsr'] == null ? null : map['pemCsr'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      subjectMode: map['subjectMode'] == null ? null : CertificateSubjectMode.fromValue(map['subjectMode'] as String),
    );
  }
}

