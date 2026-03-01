// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_certificate_authority_configuration.dart';
import 'certificate_authority_revocation_configuration.dart';

/// {@template pulumi_acmpca_certificate_authority_certificate_authority_args_doc}
/// The set of arguments for CertificateAuthority.
/// {@endtemplate}
/// {@macro pulumi_acmpca_certificate_authority_certificate_authority_args_doc}
class CertificateAuthorityArgs {
  /// Nested argument containing algorithms and certificate subject information. Defined below.
  final pulumi.Input<CertificateAuthorityCertificateAuthorityConfiguration> certificateAuthorityConfiguration;
  /// Whether the certificate authority is enabled or disabled. Defaults to `true`. Can only be disabled if the CA is in an `ACTIVE` state.
  final pulumi.Input<bool>? enabled;
  /// Cryptographic key management compliance standard used for handling CA keys. Defaults to `FIPS_140_2_LEVEL_3_OR_HIGHER`. Valid values: `FIPS_140_2_LEVEL_3_OR_HIGHER` and `FIPS_140_2_LEVEL_2_OR_HIGHER`. Supported standard for each region can be found in the [Storage and security compliance of AWS Private CA private keys Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/data-protection.html#private-keys).
  final pulumi.Input<String>? keyStorageSecurityStandard;
  /// Number of days to make a CA restorable after it has been deleted, must be between 7 to 30 days, with default to 30 days.
  final pulumi.Input<int>? permanentDeletionTimeInDays;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Nested argument containing revocation configuration. Defined below.
  final pulumi.Input<CertificateAuthorityRevocationConfiguration>? revocationConfiguration;
  /// Key-value map of user-defined tags that are attached to the certificate authority. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Type of the certificate authority. Defaults to `SUBORDINATE`. Valid values: `ROOT` and `SUBORDINATE`.
  final pulumi.Input<String>? type;
  /// Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days. Defaults to `GENERAL_PURPOSE`. Valid values: `GENERAL_PURPOSE` and `SHORT_LIVED_CERTIFICATE`.
  final pulumi.Input<String>? usageMode;

  /// Creates a new [CertificateAuthorityArgs].
  /// [certificateAuthorityConfiguration] Nested argument containing algorithms and certificate subject information. Defined below.
  /// [enabled] Whether the certificate authority is enabled or disabled. Defaults to `true`. Can only be disabled if the CA is in an `ACTIVE` state.
  /// [keyStorageSecurityStandard] Cryptographic key management compliance standard used for handling CA keys. Defaults to `FIPS_140_2_LEVEL_3_OR_HIGHER`. Valid values: `FIPS_140_2_LEVEL_3_OR_HIGHER` and `FIPS_140_2_LEVEL_2_OR_HIGHER`. Supported standard for each region can be found in the [Storage and security compliance of AWS Private CA private keys Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/data-protection.html#private-keys).
  /// [permanentDeletionTimeInDays] Number of days to make a CA restorable after it has been deleted, must be between 7 to 30 days, with default to 30 days.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revocationConfiguration] Nested argument containing revocation configuration. Defined below.
  /// [tags] Key-value map of user-defined tags that are attached to the certificate authority. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Type of the certificate authority. Defaults to `SUBORDINATE`. Valid values: `ROOT` and `SUBORDINATE`.
  /// [usageMode] Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days. Defaults to `GENERAL_PURPOSE`. Valid values: `GENERAL_PURPOSE` and `SHORT_LIVED_CERTIFICATE`.
  CertificateAuthorityArgs({
    required pulumi.Output<CertificateAuthorityCertificateAuthorityConfiguration> certificateAuthorityConfiguration,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? keyStorageSecurityStandard,
    pulumi.Output<int>? permanentDeletionTimeInDays,
    pulumi.Output<String>? region,
    pulumi.Output<CertificateAuthorityRevocationConfiguration>? revocationConfiguration,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? usageMode,
  }) :
      certificateAuthorityConfiguration = pulumi.Input.asInput<CertificateAuthorityCertificateAuthorityConfiguration>(certificateAuthorityConfiguration),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      keyStorageSecurityStandard = pulumi.Input.asOptionalInput<String>(keyStorageSecurityStandard),
      permanentDeletionTimeInDays = pulumi.Input.asOptionalInput<int>(permanentDeletionTimeInDays),
      region = pulumi.Input.asOptionalInput<String>(region),
      revocationConfiguration = pulumi.Input.asOptionalInput<CertificateAuthorityRevocationConfiguration>(revocationConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      usageMode = pulumi.Input.asOptionalInput<String>(usageMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityConfiguration': pulumi.Input.mapInputValue<CertificateAuthorityCertificateAuthorityConfiguration, Map<String, dynamic>>(certificateAuthorityConfiguration, (value) => value.toMap()),
      'enabled': ?enabled,
      'keyStorageSecurityStandard': ?keyStorageSecurityStandard,
      'permanentDeletionTimeInDays': ?permanentDeletionTimeInDays,
      'region': ?region,
      'revocationConfiguration': ?pulumi.Input.mapOptionalInputValue<CertificateAuthorityRevocationConfiguration, Map<String, dynamic>>(revocationConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'type': ?type,
      'usageMode': ?usageMode,
    };
  }

  factory CertificateAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityArgs(
      certificateAuthorityConfiguration: pulumi.Output.create<CertificateAuthorityCertificateAuthorityConfiguration>(CertificateAuthorityCertificateAuthorityConfiguration.fromMap((map['certificateAuthorityConfiguration'] as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      keyStorageSecurityStandard: map['keyStorageSecurityStandard'] == null ? null : pulumi.Output.create<String>(map['keyStorageSecurityStandard'] as String),
      permanentDeletionTimeInDays: map['permanentDeletionTimeInDays'] == null ? null : pulumi.Output.create<int>(map['permanentDeletionTimeInDays'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revocationConfiguration: map['revocationConfiguration'] == null ? null : pulumi.Output.create<CertificateAuthorityRevocationConfiguration>(CertificateAuthorityRevocationConfiguration.fromMap((map['revocationConfiguration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      usageMode: map['usageMode'] == null ? null : pulumi.Output.create<String>(map['usageMode'] as String),
    );
  }
}

