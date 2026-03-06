// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_certificate_authority_configuration.dart';
import 'certificate_authority_revocation_configuration.dart';

/// Input properties used for looking up and filtering CertificateAuthority resources.
class CertificateAuthorityState {
  /// ARN of the certificate authority.
  final pulumi.Input<String>? arn;
  /// Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported.
  final pulumi.Input<String>? certificate;
  /// Nested argument containing algorithms and certificate subject information. Defined below.
  final pulumi.Input<CertificateAuthorityCertificateAuthorityConfiguration>? certificateAuthorityConfiguration;
  /// Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported.
  final pulumi.Input<String>? certificateChain;
  /// The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.
  final pulumi.Input<String>? certificateSigningRequest;
  /// Whether the certificate authority is enabled or disabled. Defaults to `true`. Can only be disabled if the CA is in an `ACTIVE` state.
  final pulumi.Input<bool>? enabled;
  /// Cryptographic key management compliance standard used for handling CA keys. Defaults to `FIPS_140_2_LEVEL_3_OR_HIGHER`. Valid values: `FIPS_140_2_LEVEL_3_OR_HIGHER` and `FIPS_140_2_LEVEL_2_OR_HIGHER`. Supported standard for each region can be found in the [Storage and security compliance of AWS Private CA private keys Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/data-protection.html#private-keys).
  final pulumi.Input<String>? keyStorageSecurityStandard;
  /// Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  final pulumi.Input<String>? notAfter;
  /// Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  final pulumi.Input<String>? notBefore;
  /// Number of days to make a CA restorable after it has been deleted, must be between 7 to 30 days, with default to 30 days.
  final pulumi.Input<int>? permanentDeletionTimeInDays;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Nested argument containing revocation configuration. Defined below.
  final pulumi.Input<CertificateAuthorityRevocationConfiguration>? revocationConfiguration;
  /// Serial number of the certificate authority. Only available after the certificate authority certificate has been imported.
  final pulumi.Input<String>? serial;
  /// Key-value map of user-defined tags that are attached to the certificate authority. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Type of the certificate authority. Defaults to `SUBORDINATE`. Valid values: `ROOT` and `SUBORDINATE`.
  final pulumi.Input<String>? type;
  /// Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days. Defaults to `GENERAL_PURPOSE`. Valid values: `GENERAL_PURPOSE` and `SHORT_LIVED_CERTIFICATE`.
  final pulumi.Input<String>? usageMode;

  /// Creates a new [CertificateAuthorityState].
  /// [arn] ARN of the certificate authority.
  /// [certificate] Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported.
  /// [certificateAuthorityConfiguration] Nested argument containing algorithms and certificate subject information. Defined below.
  /// [certificateChain] Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported.
  /// [certificateSigningRequest] The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.
  /// [enabled] Whether the certificate authority is enabled or disabled. Defaults to `true`. Can only be disabled if the CA is in an `ACTIVE` state.
  /// [keyStorageSecurityStandard] Cryptographic key management compliance standard used for handling CA keys. Defaults to `FIPS_140_2_LEVEL_3_OR_HIGHER`. Valid values: `FIPS_140_2_LEVEL_3_OR_HIGHER` and `FIPS_140_2_LEVEL_2_OR_HIGHER`. Supported standard for each region can be found in the [Storage and security compliance of AWS Private CA private keys Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/data-protection.html#private-keys).
  /// [notAfter] Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  /// [notBefore] Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  /// [permanentDeletionTimeInDays] Number of days to make a CA restorable after it has been deleted, must be between 7 to 30 days, with default to 30 days.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revocationConfiguration] Nested argument containing revocation configuration. Defined below.
  /// [serial] Serial number of the certificate authority. Only available after the certificate authority certificate has been imported.
  /// [tags] Key-value map of user-defined tags that are attached to the certificate authority. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Type of the certificate authority. Defaults to `SUBORDINATE`. Valid values: `ROOT` and `SUBORDINATE`.
  /// [usageMode] Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days. Defaults to `GENERAL_PURPOSE`. Valid values: `GENERAL_PURPOSE` and `SHORT_LIVED_CERTIFICATE`.
  const CertificateAuthorityState({
    this.arn,
    this.certificate,
    this.certificateAuthorityConfiguration,
    this.certificateChain,
    this.certificateSigningRequest,
    this.enabled,
    this.keyStorageSecurityStandard,
    this.notAfter,
    this.notBefore,
    this.permanentDeletionTimeInDays,
    this.region,
    this.revocationConfiguration,
    this.serial,
    this.tags,
    this.tagsAll,
    this.type,
    this.usageMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificate': ?certificate,
      'certificateAuthorityConfiguration': ?pulumi.Input.mapOptionalInputValue<CertificateAuthorityCertificateAuthorityConfiguration, Map<String, dynamic>>(certificateAuthorityConfiguration, (value) => value.toMap()),
      'certificateChain': ?certificateChain,
      'certificateSigningRequest': ?certificateSigningRequest,
      'enabled': ?enabled,
      'keyStorageSecurityStandard': ?keyStorageSecurityStandard,
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
      'permanentDeletionTimeInDays': ?permanentDeletionTimeInDays,
      'region': ?region,
      'revocationConfiguration': ?pulumi.Input.mapOptionalInputValue<CertificateAuthorityRevocationConfiguration, Map<String, dynamic>>(revocationConfiguration, (value) => value.toMap()),
      'serial': ?serial,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'usageMode': ?usageMode,
    };
  }

  factory CertificateAuthorityState.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateAuthorityConfiguration: (() { final guardedValue = map['certificateAuthorityConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateAuthorityCertificateAuthorityConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateSigningRequest: (() { final guardedValue = map['certificateSigningRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyStorageSecurityStandard: (() { final guardedValue = map['keyStorageSecurityStandard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permanentDeletionTimeInDays: (() { final guardedValue = map['permanentDeletionTimeInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revocationConfiguration: (() { final guardedValue = map['revocationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateAuthorityRevocationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serial: (() { final guardedValue = map['serial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageMode: (() { final guardedValue = map['usageMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

