// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_config.dart';
import 'certificate_issuance_config_key_algorithm.dart';

/// {@template pulumi_certificatemanager_v1_certificate_issuance_config_args_doc}
/// The set of arguments for CertificateIssuanceConfig.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_certificate_issuance_config_args_doc}
class CertificateIssuanceConfigArgs {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  final pulumi.Input<CertificateAuthorityConfig> certificateAuthorityConfig;

  /// Required. A user-provided name of the certificate config.
  final pulumi.Input<String> certificateIssuanceConfigId;

  /// One or more paragraphs of text description of a CertificateIssuanceConfig.
  final pulumi.Input<String>? description;

  /// The key algorithm to use when generating the private key.
  final pulumi.Input<CertificateIssuanceConfigKeyAlgorithm> keyAlgorithm;

  /// Set of labels associated with a CertificateIssuanceConfig.
  final pulumi.Input<Map<String, String>>? labels;

  /// Workload certificate lifetime requested.
  final pulumi.Input<String> lifetime;
  final pulumi.Input<String>? location;

  /// A user-defined name of the certificate issuance config. CertificateIssuanceConfig names must be unique globally and match pattern `projects/*/locations/*/certificateIssuanceConfigs/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate. Must be a number between 1-99, inclusive.
  final pulumi.Input<int> rotationWindowPercentage;

  /// Creates a new [CertificateIssuanceConfigArgs].
  /// [certificateAuthorityConfig] The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  /// [certificateIssuanceConfigId] Required. A user-provided name of the certificate config.
  /// [description] One or more paragraphs of text description of a CertificateIssuanceConfig.
  /// [keyAlgorithm] The key algorithm to use when generating the private key.
  /// [labels] Set of labels associated with a CertificateIssuanceConfig.
  /// [lifetime] Workload certificate lifetime requested.
  /// [location] Optional.
  /// [name] A user-defined name of the certificate issuance config. CertificateIssuanceConfig names must be unique globally and match pattern `projects/*/locations/*/certificateIssuanceConfigs/*`.
  /// [project] Optional.
  /// [rotationWindowPercentage] Specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate. Must be a number between 1-99, inclusive.
  CertificateIssuanceConfigArgs({
    required CertificateAuthorityConfig certificateAuthorityConfig,
    required String certificateIssuanceConfigId,
    String? description,
    required CertificateIssuanceConfigKeyAlgorithm keyAlgorithm,
    Map<String, String>? labels,
    required String lifetime,
    String? location,
    String? name,
    String? project,
    required int rotationWindowPercentage,
  }) : certificateAuthorityConfig =
           pulumi.Input.asInput<CertificateAuthorityConfig>(
             certificateAuthorityConfig,
           ),
       certificateIssuanceConfigId = pulumi.Input.asInput<String>(
         certificateIssuanceConfigId,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       keyAlgorithm = pulumi
           .Input.asInput<CertificateIssuanceConfigKeyAlgorithm>(keyAlgorithm),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       lifetime = pulumi.Input.asInput<String>(lifetime),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       rotationWindowPercentage = pulumi.Input.asInput<int>(
         rotationWindowPercentage,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityConfig':
          pulumi.Input.mapInputValue<
            CertificateAuthorityConfig,
            Map<String, dynamic>
          >(certificateAuthorityConfig, (value) => value.toMap()),
      'certificateIssuanceConfigId': certificateIssuanceConfigId,
      'description': ?description,
      'keyAlgorithm':
          pulumi.Input.mapInputValue<
            CertificateIssuanceConfigKeyAlgorithm,
            String
          >(keyAlgorithm, (value) => value.value),
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
      certificateAuthorityConfig: CertificateAuthorityConfig.fromMap(
        (map['certificateAuthorityConfig'] as Map).cast<String, dynamic>(),
      ),
      certificateIssuanceConfigId: map['certificateIssuanceConfigId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      keyAlgorithm: CertificateIssuanceConfigKeyAlgorithm.fromValue(
        map['keyAlgorithm'] as String,
      ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      lifetime: map['lifetime'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rotationWindowPercentage: map['rotationWindowPercentage'] as int,
    );
  }
}
