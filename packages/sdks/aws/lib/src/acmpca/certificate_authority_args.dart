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
  /// Key-value map of user-defined tags that are attached to the certificate authority. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [tags] Key-value map of user-defined tags that are attached to the certificate authority. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Type of the certificate authority. Defaults to `SUBORDINATE`. Valid values: `ROOT` and `SUBORDINATE`.
  /// [usageMode] Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days. Defaults to `GENERAL_PURPOSE`. Valid values: `GENERAL_PURPOSE` and `SHORT_LIVED_CERTIFICATE`.
  const CertificateAuthorityArgs({
    required this.certificateAuthorityConfiguration,
    this.enabled,
    this.keyStorageSecurityStandard,
    this.permanentDeletionTimeInDays,
    this.region,
    this.revocationConfiguration,
    this.tags,
    this.type,
    this.usageMode,
  });

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
      certificateAuthorityConfiguration: pulumi.Input.fromValue(CertificateAuthorityCertificateAuthorityConfiguration.fromMap((map['certificateAuthorityConfiguration']! as Map).cast<String, dynamic>())),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyStorageSecurityStandard: (() { final guardedValue = map['keyStorageSecurityStandard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permanentDeletionTimeInDays: (() { final guardedValue = map['permanentDeletionTimeInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revocationConfiguration: (() { final guardedValue = map['revocationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateAuthorityRevocationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageMode: (() { final guardedValue = map['usageMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
