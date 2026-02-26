// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_authority_config_response.dart';

/// Result data returned by getCertificateIssuanceConfig.
class GetCertificateIssuanceConfigResult {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  final CertificateAuthorityConfigResponse certificateAuthorityConfig;

  /// The creation timestamp of a CertificateIssuanceConfig.
  final String createTime;

  /// One or more paragraphs of text description of a CertificateIssuanceConfig.
  final String description;

  /// The key algorithm to use when generating the private key.
  final String keyAlgorithm;

  /// Set of labels associated with a CertificateIssuanceConfig.
  final Map<String, String> labels;

  /// Workload certificate lifetime requested.
  final String lifetime;

  /// A user-defined name of the certificate issuance config. CertificateIssuanceConfig names must be unique globally and match pattern `projects/*/locations/*/certificateIssuanceConfigs/*`.
  final String name;

  /// Specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate. Must be a number between 1-99, inclusive.
  final int rotationWindowPercentage;

  /// The last update timestamp of a CertificateIssuanceConfig.
  final String updateTime;

  GetCertificateIssuanceConfigResult({
    required this.certificateAuthorityConfig,
    required this.createTime,
    required this.description,
    required this.keyAlgorithm,
    required this.labels,
    required this.lifetime,
    required this.name,
    required this.rotationWindowPercentage,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateAuthorityConfig'] = certificateAuthorityConfig.toMap();
    map['createTime'] = createTime;
    map['description'] = description;
    map['keyAlgorithm'] = keyAlgorithm;
    map['labels'] = labels;
    map['lifetime'] = lifetime;
    map['name'] = name;
    map['rotationWindowPercentage'] = rotationWindowPercentage;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetCertificateIssuanceConfigResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateIssuanceConfigResult(
      certificateAuthorityConfig: CertificateAuthorityConfigResponse.fromMap(
          (map['certificateAuthorityConfig'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      keyAlgorithm: map['keyAlgorithm'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lifetime: map['lifetime'] as String,
      name: map['name'] as String,
      rotationWindowPercentage: map['rotationWindowPercentage'] as int,
      updateTime: map['updateTime'] as String,
    );
  }
}
