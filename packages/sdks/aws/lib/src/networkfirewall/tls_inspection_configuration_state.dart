// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_inspection_configuration_certificate.dart';
import 'tls_inspection_configuration_certificate_authority.dart';
import 'tls_inspection_configuration_encryption_configuration.dart';
import 'tls_inspection_configuration_timeouts.dart';
import 'tls_inspection_configuration_tls_inspection_configuration.dart';

/// Input properties used for looking up and filtering TlsInspectionConfiguration resources.
class TlsInspectionConfigurationState {
  /// ARN of the TLS Inspection Configuration.
  final pulumi.Input<String>? arn;
  /// Certificate Manager certificate block. See Certificate Authority below for details.
  final pulumi.Input<List<TlsInspectionConfigurationCertificateAuthority>>? certificateAuthorities;
  /// List of certificate blocks describing certificates associated with the TLS inspection configuration. See Certificates below for details.
  final pulumi.Input<List<TlsInspectionConfigurationCertificate>>? certificates;
  /// Description of the TLS inspection configuration.
  final pulumi.Input<String>? description;
  /// Encryption configuration block. Detailed below.
  final pulumi.Input<List<TlsInspectionConfigurationEncryptionConfiguration>>? encryptionConfigurations;
  /// Descriptive name of the TLS inspection configuration.
  final pulumi.Input<String>? name;
  /// Number of firewall policies that use this TLS inspection configuration.
  final pulumi.Input<int>? numberOfAssociations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<TlsInspectionConfigurationTimeouts>? timeouts;
  /// TLS inspection configuration block. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<TlsInspectionConfigurationTlsInspectionConfiguration>? tlsInspectionConfiguration;
  /// A unique identifier for the TLS inspection configuration.
  final pulumi.Input<String>? tlsInspectionConfigurationId;
  /// String token used when updating the rule group.
  final pulumi.Input<String>? updateToken;

  /// Creates a new [TlsInspectionConfigurationState].
  /// [arn] ARN of the TLS Inspection Configuration.
  /// [certificateAuthorities] Certificate Manager certificate block. See Certificate Authority below for details.
  /// [certificates] List of certificate blocks describing certificates associated with the TLS inspection configuration. See Certificates below for details.
  /// [description] Description of the TLS inspection configuration.
  /// [encryptionConfigurations] Encryption configuration block. Detailed below.
  /// [name] Descriptive name of the TLS inspection configuration.
  /// [numberOfAssociations] Number of firewall policies that use this TLS inspection configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [tlsInspectionConfiguration] TLS inspection configuration block. Detailed below.
  /// [tlsInspectionConfigurationId] A unique identifier for the TLS inspection configuration.
  /// [updateToken] String token used when updating the rule group.
  TlsInspectionConfigurationState({
    this.arn,
    this.certificateAuthorities,
    this.certificates,
    this.description,
    this.encryptionConfigurations,
    this.name,
    this.numberOfAssociations,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.tlsInspectionConfiguration,
    this.tlsInspectionConfigurationId,
    this.updateToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificateAuthorities': ?pulumi.Input.mapOptionalInputValue<List<TlsInspectionConfigurationCertificateAuthority>, List<Map<String, dynamic>>>(certificateAuthorities, (value) => pulumi.Input.encodeList<TlsInspectionConfigurationCertificateAuthority, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<TlsInspectionConfigurationCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<TlsInspectionConfigurationCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'encryptionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<TlsInspectionConfigurationEncryptionConfiguration>, List<Map<String, dynamic>>>(encryptionConfigurations, (value) => pulumi.Input.encodeList<TlsInspectionConfigurationEncryptionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'numberOfAssociations': ?numberOfAssociations,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TlsInspectionConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'tlsInspectionConfiguration': ?pulumi.Input.mapOptionalInputValue<TlsInspectionConfigurationTlsInspectionConfiguration, Map<String, dynamic>>(tlsInspectionConfiguration, (value) => value.toMap()),
      'tlsInspectionConfigurationId': ?tlsInspectionConfigurationId,
      'updateToken': ?updateToken,
    };
  }

  factory TlsInspectionConfigurationState.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      certificateAuthorities: map['certificateAuthorities'] == null ? null : (pulumi.Input.decodeList<TlsInspectionConfigurationCertificateAuthority>(map['certificateAuthorities'], (value) => TlsInspectionConfigurationCertificateAuthority.fromMap((value as Map).cast<String, dynamic>()))).input(),
      certificates: map['certificates'] == null ? null : (pulumi.Input.decodeList<TlsInspectionConfigurationCertificate>(map['certificates'], (value) => TlsInspectionConfigurationCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryptionConfigurations: map['encryptionConfigurations'] == null ? null : (pulumi.Input.decodeList<TlsInspectionConfigurationEncryptionConfiguration>(map['encryptionConfigurations'], (value) => TlsInspectionConfigurationEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      numberOfAssociations: map['numberOfAssociations'] == null ? null : (map['numberOfAssociations'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (TlsInspectionConfigurationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      tlsInspectionConfiguration: map['tlsInspectionConfiguration'] == null ? null : (TlsInspectionConfigurationTlsInspectionConfiguration.fromMap((map['tlsInspectionConfiguration'] as Map).cast<String, dynamic>())).input(),
      tlsInspectionConfigurationId: map['tlsInspectionConfigurationId'] == null ? null : (map['tlsInspectionConfigurationId'] as String).input(),
      updateToken: map['updateToken'] == null ? null : (map['updateToken'] as String).input(),
    );
  }
}

