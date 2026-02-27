// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../certificate_authority_certificate_authority_configuration/certificate_authority_certificate_authority_configuration.dart';
import '../certificate_authority_revocation_configuration/certificate_authority_revocation_configuration.dart';

/// The set of arguments for CertificateAuthority.
class CertificateAuthorityArgs {
  /// Nested argument containing algorithms and certificate subject information. Defined below.
  final Input<CertificateAuthorityCertificateAuthorityConfiguration>
      certificateAuthorityConfiguration;

  /// Whether the certificate authority is enabled or disabled. Defaults to `true`. Can only be disabled if the CA is in an `ACTIVE` state.
  final Input<bool>? enabled;

  /// Cryptographic key management compliance standard used for handling CA keys. Defaults to `FIPS_140_2_LEVEL_3_OR_HIGHER`. Valid values: `FIPS_140_2_LEVEL_3_OR_HIGHER` and `FIPS_140_2_LEVEL_2_OR_HIGHER`. Supported standard for each region can be found in the [Storage and security compliance of AWS Private CA private keys Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/data-protection.html#private-keys).
  final Input<String>? keyStorageSecurityStandard;

  /// Number of days to make a CA restorable after it has been deleted, must be between 7 to 30 days, with default to 30 days.
  final Input<int>? permanentDeletionTimeInDays;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Nested argument containing revocation configuration. Defined below.
  final Input<CertificateAuthorityRevocationConfiguration>?
      revocationConfiguration;

  /// Key-value map of user-defined tags that are attached to the certificate authority. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Type of the certificate authority. Defaults to `SUBORDINATE`. Valid values: `ROOT` and `SUBORDINATE`.
  final Input<String>? type;

  /// Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days. Defaults to `GENERAL_PURPOSE`. Valid values: `GENERAL_PURPOSE` and `SHORT_LIVED_CERTIFICATE`.
  final Input<String>? usageMode;

  CertificateAuthorityArgs({
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
    final map = <String, dynamic>{};
    map['certificateAuthorityConfiguration'] = Input.mapInputValue<
            CertificateAuthorityCertificateAuthorityConfiguration,
            Map<String, dynamic>>(
        certificateAuthorityConfiguration, (value) => value.toMap());
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final keyStorageSecurityStandardValue = keyStorageSecurityStandard;
    if (keyStorageSecurityStandardValue != null) {
      map['keyStorageSecurityStandard'] = keyStorageSecurityStandardValue;
    }
    final permanentDeletionTimeInDaysValue = permanentDeletionTimeInDays;
    if (permanentDeletionTimeInDaysValue != null) {
      map['permanentDeletionTimeInDays'] = permanentDeletionTimeInDaysValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final revocationConfigurationValue = revocationConfiguration;
    if (revocationConfigurationValue != null) {
      map['revocationConfiguration'] = Input.mapOptionalInputValue<
              CertificateAuthorityRevocationConfiguration,
              Map<String, dynamic>>(
          revocationConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final usageModeValue = usageMode;
    if (usageModeValue != null) {
      map['usageMode'] = usageModeValue;
    }
    return map;
  }

  factory CertificateAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityArgs(
      certificateAuthorityConfiguration:
          Input.asInput<CertificateAuthorityCertificateAuthorityConfiguration>(
              map['certificateAuthorityConfiguration']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      keyStorageSecurityStandard:
          Input.asOptionalInput<String>(map['keyStorageSecurityStandard']),
      permanentDeletionTimeInDays:
          Input.asOptionalInput<int>(map['permanentDeletionTimeInDays']),
      region: Input.asOptionalInput<String>(map['region']),
      revocationConfiguration:
          Input.asOptionalInput<CertificateAuthorityRevocationConfiguration>(
              map['revocationConfiguration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asOptionalInput<String>(map['type']),
      usageMode: Input.asOptionalInput<String>(map['usageMode']),
    );
  }
}
