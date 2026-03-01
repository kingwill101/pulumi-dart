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
  CertificateAuthorityState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? certificate,
    pulumi.Output<CertificateAuthorityCertificateAuthorityConfiguration>? certificateAuthorityConfiguration,
    pulumi.Output<String>? certificateChain,
    pulumi.Output<String>? certificateSigningRequest,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? keyStorageSecurityStandard,
    pulumi.Output<String>? notAfter,
    pulumi.Output<String>? notBefore,
    pulumi.Output<int>? permanentDeletionTimeInDays,
    pulumi.Output<String>? region,
    pulumi.Output<CertificateAuthorityRevocationConfiguration>? revocationConfiguration,
    pulumi.Output<String>? serial,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<String>? usageMode,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      certificateAuthorityConfiguration = pulumi.Input.asOptionalInput<CertificateAuthorityCertificateAuthorityConfiguration>(certificateAuthorityConfiguration),
      certificateChain = pulumi.Input.asOptionalInput<String>(certificateChain),
      certificateSigningRequest = pulumi.Input.asOptionalInput<String>(certificateSigningRequest),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      keyStorageSecurityStandard = pulumi.Input.asOptionalInput<String>(keyStorageSecurityStandard),
      notAfter = pulumi.Input.asOptionalInput<String>(notAfter),
      notBefore = pulumi.Input.asOptionalInput<String>(notBefore),
      permanentDeletionTimeInDays = pulumi.Input.asOptionalInput<int>(permanentDeletionTimeInDays),
      region = pulumi.Input.asOptionalInput<String>(region),
      revocationConfiguration = pulumi.Input.asOptionalInput<CertificateAuthorityRevocationConfiguration>(revocationConfiguration),
      serial = pulumi.Input.asOptionalInput<String>(serial),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      usageMode = pulumi.Input.asOptionalInput<String>(usageMode);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      certificateAuthorityConfiguration: map['certificateAuthorityConfiguration'] == null ? null : pulumi.Output.create<CertificateAuthorityCertificateAuthorityConfiguration>(CertificateAuthorityCertificateAuthorityConfiguration.fromMap((map['certificateAuthorityConfiguration'] as Map).cast<String, dynamic>())),
      certificateChain: map['certificateChain'] == null ? null : pulumi.Output.create<String>(map['certificateChain'] as String),
      certificateSigningRequest: map['certificateSigningRequest'] == null ? null : pulumi.Output.create<String>(map['certificateSigningRequest'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      keyStorageSecurityStandard: map['keyStorageSecurityStandard'] == null ? null : pulumi.Output.create<String>(map['keyStorageSecurityStandard'] as String),
      notAfter: map['notAfter'] == null ? null : pulumi.Output.create<String>(map['notAfter'] as String),
      notBefore: map['notBefore'] == null ? null : pulumi.Output.create<String>(map['notBefore'] as String),
      permanentDeletionTimeInDays: map['permanentDeletionTimeInDays'] == null ? null : pulumi.Output.create<int>(map['permanentDeletionTimeInDays'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revocationConfiguration: map['revocationConfiguration'] == null ? null : pulumi.Output.create<CertificateAuthorityRevocationConfiguration>(CertificateAuthorityRevocationConfiguration.fromMap((map['revocationConfiguration'] as Map).cast<String, dynamic>())),
      serial: map['serial'] == null ? null : pulumi.Output.create<String>(map['serial'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      usageMode: map['usageMode'] == null ? null : pulumi.Output.create<String>(map['usageMode'] as String),
    );
  }
}

