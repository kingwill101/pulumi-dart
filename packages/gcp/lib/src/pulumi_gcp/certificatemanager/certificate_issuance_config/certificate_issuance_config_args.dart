// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../certificate_issuance_config_certificate_authority_config/certificate_issuance_config_certificate_authority_config.dart';

/// The set of arguments for CertificateIssuanceConfig.
class CertificateIssuanceConfigArgs {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  /// Structure is documented below.
  final Input<CertificateIssuanceConfigCertificateAuthorityConfig>
      certificateAuthorityConfig;

  /// One or more paragraphs of text description of a CertificateIssuanceConfig.
  final Input<String>? description;

  /// Key algorithm to use when generating the private key.
  /// Possible values are: `RSA_2048`, `ECDSA_P256`.
  final Input<String> keyAlgorithm;

  /// 'Set of label tags associated with the CertificateIssuanceConfig resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "1814400s". Valid values are from 21 days (1814400s) to 30 days (2592000s)
  final Input<String> lifetime;

  /// The Certificate Manager location. If not specified, "global" is used.
  final Input<String>? location;

  /// A user-defined name of the certificate issuance config.
  /// CertificateIssuanceConfig names must be unique globally.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.
  /// Must be a number between 1-99, inclusive.
  /// You must set the rotation window percentage in relation to the certificate lifetime so that certificate renewal occurs at least 7 days after
  /// the certificate has been issued and at least 7 days before it expires.
  final Input<int> rotationWindowPercentage;

  CertificateIssuanceConfigArgs({
    required this.certificateAuthorityConfig,
    this.description,
    required this.keyAlgorithm,
    this.labels,
    required this.lifetime,
    this.location,
    this.name,
    this.project,
    required this.rotationWindowPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateAuthorityConfig'] = Input.mapInputValue<
            CertificateIssuanceConfigCertificateAuthorityConfig,
            Map<String, dynamic>>(
        certificateAuthorityConfig, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['keyAlgorithm'] = keyAlgorithm;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['lifetime'] = lifetime;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rotationWindowPercentage'] = rotationWindowPercentage;
    return map;
  }

  factory CertificateIssuanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return CertificateIssuanceConfigArgs(
      certificateAuthorityConfig:
          Input.asInput<CertificateIssuanceConfigCertificateAuthorityConfig>(
              map['certificateAuthorityConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      keyAlgorithm: Input.asInput<String>(map['keyAlgorithm']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lifetime: Input.asInput<String>(map['lifetime']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rotationWindowPercentage:
          Input.asInput<int>(map['rotationWindowPercentage']),
    );
  }
}
