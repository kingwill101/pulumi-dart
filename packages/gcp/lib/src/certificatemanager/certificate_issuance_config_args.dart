// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_issuance_config_certificate_authority_config.dart';

/// {@template pulumi_certificatemanager_certificate_issuance_config_certificate_issuance_config_args_doc}
/// The set of arguments for CertificateIssuanceConfig.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_certificate_issuance_config_certificate_issuance_config_args_doc}
class CertificateIssuanceConfigArgs {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  /// Structure is documented below.
  final pulumi.Input<CertificateIssuanceConfigCertificateAuthorityConfig> certificateAuthorityConfig;
  /// One or more paragraphs of text description of a CertificateIssuanceConfig.
  final pulumi.Input<String>? description;
  /// Key algorithm to use when generating the private key.
  /// Possible values are: `RSA_2048`, `ECDSA_P256`.
  final pulumi.Input<String> keyAlgorithm;
  /// 'Set of label tags associated with the CertificateIssuanceConfig resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "1814400s". Valid values are from 21 days (1814400s) to 30 days (2592000s)
  final pulumi.Input<String> lifetime;
  /// The Certificate Manager location. If not specified, "global" is used.
  final pulumi.Input<String>? location;
  /// A user-defined name of the certificate issuance config.
  /// CertificateIssuanceConfig names must be unique globally.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.
  /// Must be a number between 1-99, inclusive.
  /// You must set the rotation window percentage in relation to the certificate lifetime so that certificate renewal occurs at least 7 days after
  /// the certificate has been issued and at least 7 days before it expires.
  final pulumi.Input<int> rotationWindowPercentage;

  /// Creates a new [CertificateIssuanceConfigArgs].
  /// [certificateAuthorityConfig] The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  /// [description] One or more paragraphs of text description of a CertificateIssuanceConfig.
  /// [keyAlgorithm] Key algorithm to use when generating the private key.
  /// [labels] 'Set of label tags associated with the CertificateIssuanceConfig resource.
  /// [lifetime] Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with 's'.
  /// [location] The Certificate Manager location. If not specified, "global" is used.
  /// [name] A user-defined name of the certificate issuance config.
  /// [project] The ID of the project in which the resource belongs.
  /// [rotationWindowPercentage] It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.
  CertificateIssuanceConfigArgs({
    required CertificateIssuanceConfigCertificateAuthorityConfig certificateAuthorityConfig,
    String? description,
    required String keyAlgorithm,
    Map<String, String>? labels,
    required String lifetime,
    String? location,
    String? name,
    String? project,
    required int rotationWindowPercentage,
  }) :
      certificateAuthorityConfig = pulumi.Input.asInput<CertificateIssuanceConfigCertificateAuthorityConfig>(certificateAuthorityConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      keyAlgorithm = pulumi.Input.asInput<String>(keyAlgorithm),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lifetime = pulumi.Input.asInput<String>(lifetime),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rotationWindowPercentage = pulumi.Input.asInput<int>(rotationWindowPercentage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityConfig': pulumi.Input.mapInputValue<CertificateIssuanceConfigCertificateAuthorityConfig, Map<String, dynamic>>(certificateAuthorityConfig, (value) => value.toMap()),
      'description': ?description,
      'keyAlgorithm': keyAlgorithm,
      'labels': ?labels,
      'lifetime': lifetime,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rotationWindowPercentage': rotationWindowPercentage,
    };
  }

  factory CertificateIssuanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return CertificateIssuanceConfigArgs(
      certificateAuthorityConfig: CertificateIssuanceConfigCertificateAuthorityConfig.fromMap((map['certificateAuthorityConfig'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      keyAlgorithm: map['keyAlgorithm'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      lifetime: map['lifetime'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rotationWindowPercentage: map['rotationWindowPercentage'] as int,
    );
  }
}

