// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'certificate_authority_config.dart';
import 'certificate_issuance_config_key_algorithm.dart';

/// The set of arguments for CertificateIssuanceConfig.
class CertificateIssuanceConfigArgs {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  final Input<CertificateAuthorityConfig> certificateAuthorityConfig;

  /// Required. A user-provided name of the certificate config.
  final Input<String> certificateIssuanceConfigId;

  /// One or more paragraphs of text description of a CertificateIssuanceConfig.
  final Input<String>? description;

  /// The key algorithm to use when generating the private key.
  final Input<CertificateIssuanceConfigKeyAlgorithm> keyAlgorithm;

  /// Set of labels associated with a CertificateIssuanceConfig.
  final Input<Map<String, String>>? labels;

  /// Workload certificate lifetime requested.
  final Input<String> lifetime;
  final Input<String>? location;

  /// A user-defined name of the certificate issuance config. CertificateIssuanceConfig names must be unique globally and match pattern `projects/*/locations/*/certificateIssuanceConfigs/*`.
  final Input<String>? name;
  final Input<String>? project;

  /// Specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate. Must be a number between 1-99, inclusive.
  final Input<int> rotationWindowPercentage;

  CertificateIssuanceConfigArgs({
    required this.certificateAuthorityConfig,
    required this.certificateIssuanceConfigId,
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
    map['certificateAuthorityConfig'] =
        Input.mapInputValue<CertificateAuthorityConfig, Map<String, dynamic>>(
            certificateAuthorityConfig, (value) => value.toMap());
    map['certificateIssuanceConfigId'] = certificateIssuanceConfigId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['keyAlgorithm'] =
        Input.mapInputValue<CertificateIssuanceConfigKeyAlgorithm, String>(
            keyAlgorithm, (value) => value.value);
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
      certificateAuthorityConfig: Input.asInput<CertificateAuthorityConfig>(
          map['certificateAuthorityConfig']),
      certificateIssuanceConfigId:
          Input.asInput<String>(map['certificateIssuanceConfigId']),
      description: Input.asOptionalInput<String>(map['description']),
      keyAlgorithm: Input.asInput<CertificateIssuanceConfigKeyAlgorithm>(
          map['keyAlgorithm']),
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
