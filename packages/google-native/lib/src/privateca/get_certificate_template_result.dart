// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_extension_constraints_response.dart';
import 'certificate_identity_constraints_response.dart';
import 'x509_parameters_response.dart';

/// Result data returned by getCertificateTemplate.
class GetCertificateTemplateResult {
  /// The time at which this CertificateTemplate was created.
  final String createTime;

  /// Optional. A human-readable description of scenarios this template is intended for.
  final String description;

  /// Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
  final CertificateIdentityConstraintsResponse identityConstraints;

  /// Optional. Labels with user-defined metadata.
  final Map<String, String> labels;

  /// Optional. The maximum lifetime allowed for issued Certificates that use this template. If the issuing CaPool's IssuancePolicy specifies a maximum_lifetime the minimum of the two durations will be the maximum lifetime for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  final String maximumLifetime;

  /// The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.
  final String name;

  /// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
  final CertificateExtensionConstraintsResponse passthroughExtensions;

  /// Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
  final X509ParametersResponse predefinedValues;

  /// The time at which this CertificateTemplate was updated.
  final String updateTime;

  /// Creates a new [GetCertificateTemplateResult].
  /// [createTime] The time at which this CertificateTemplate was created.
  /// [description] Optional. A human-readable description of scenarios this template is intended for.
  /// [identityConstraints] Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
  /// [labels] Optional. Labels with user-defined metadata.
  /// [maximumLifetime] Optional. The maximum lifetime allowed for issued Certificates that use this template. If the issuing CaPool's IssuancePolicy specifies a maximum_lifetime the minimum of the two durations will be the maximum lifetime for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  /// [name] The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.
  /// [passthroughExtensions] Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
  /// [predefinedValues] Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
  /// [updateTime] The time at which this CertificateTemplate was updated.
  GetCertificateTemplateResult({
    required this.createTime,
    required this.description,
    required this.identityConstraints,
    required this.labels,
    required this.maximumLifetime,
    required this.name,
    required this.passthroughExtensions,
    required this.predefinedValues,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'identityConstraints': identityConstraints.toMap(),
      'labels': labels,
      'maximumLifetime': maximumLifetime,
      'name': name,
      'passthroughExtensions': passthroughExtensions.toMap(),
      'predefinedValues': predefinedValues.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetCertificateTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateTemplateResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      identityConstraints: CertificateIdentityConstraintsResponse.fromMap(
        (map['identityConstraints'] as Map).cast<String, dynamic>(),
      ),
      labels: (map['labels'] as Map).cast<String, String>(),
      maximumLifetime: map['maximumLifetime'] as String,
      name: map['name'] as String,
      passthroughExtensions: CertificateExtensionConstraintsResponse.fromMap(
        (map['passthroughExtensions'] as Map).cast<String, dynamic>(),
      ),
      predefinedValues: X509ParametersResponse.fromMap(
        (map['predefinedValues'] as Map).cast<String, dynamic>(),
      ),
      updateTime: map['updateTime'] as String,
    );
  }
}
