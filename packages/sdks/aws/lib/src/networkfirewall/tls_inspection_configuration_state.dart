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
    pulumi.Output<String>? arn,
    pulumi.Output<List<TlsInspectionConfigurationCertificateAuthority>>? certificateAuthorities,
    pulumi.Output<List<TlsInspectionConfigurationCertificate>>? certificates,
    pulumi.Output<String>? description,
    pulumi.Output<List<TlsInspectionConfigurationEncryptionConfiguration>>? encryptionConfigurations,
    pulumi.Output<String>? name,
    pulumi.Output<int>? numberOfAssociations,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<TlsInspectionConfigurationTimeouts>? timeouts,
    pulumi.Output<TlsInspectionConfigurationTlsInspectionConfiguration>? tlsInspectionConfiguration,
    pulumi.Output<String>? tlsInspectionConfigurationId,
    pulumi.Output<String>? updateToken,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      certificateAuthorities = pulumi.Input.asOptionalInput<List<TlsInspectionConfigurationCertificateAuthority>>(certificateAuthorities),
      certificates = pulumi.Input.asOptionalInput<List<TlsInspectionConfigurationCertificate>>(certificates),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptionConfigurations = pulumi.Input.asOptionalInput<List<TlsInspectionConfigurationEncryptionConfiguration>>(encryptionConfigurations),
      name = pulumi.Input.asOptionalInput<String>(name),
      numberOfAssociations = pulumi.Input.asOptionalInput<int>(numberOfAssociations),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<TlsInspectionConfigurationTimeouts>(timeouts),
      tlsInspectionConfiguration = pulumi.Input.asOptionalInput<TlsInspectionConfigurationTlsInspectionConfiguration>(tlsInspectionConfiguration),
      tlsInspectionConfigurationId = pulumi.Input.asOptionalInput<String>(tlsInspectionConfigurationId),
      updateToken = pulumi.Input.asOptionalInput<String>(updateToken);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      certificateAuthorities: map['certificateAuthorities'] == null ? null : pulumi.Output.create<List<TlsInspectionConfigurationCertificateAuthority>>(pulumi.Input.decodeList<TlsInspectionConfigurationCertificateAuthority>(map['certificateAuthorities'], (value) => TlsInspectionConfigurationCertificateAuthority.fromMap((value as Map).cast<String, dynamic>()))),
      certificates: map['certificates'] == null ? null : pulumi.Output.create<List<TlsInspectionConfigurationCertificate>>(pulumi.Input.decodeList<TlsInspectionConfigurationCertificate>(map['certificates'], (value) => TlsInspectionConfigurationCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptionConfigurations: map['encryptionConfigurations'] == null ? null : pulumi.Output.create<List<TlsInspectionConfigurationEncryptionConfiguration>>(pulumi.Input.decodeList<TlsInspectionConfigurationEncryptionConfiguration>(map['encryptionConfigurations'], (value) => TlsInspectionConfigurationEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      numberOfAssociations: map['numberOfAssociations'] == null ? null : pulumi.Output.create<int>(map['numberOfAssociations'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<TlsInspectionConfigurationTimeouts>(TlsInspectionConfigurationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      tlsInspectionConfiguration: map['tlsInspectionConfiguration'] == null ? null : pulumi.Output.create<TlsInspectionConfigurationTlsInspectionConfiguration>(TlsInspectionConfigurationTlsInspectionConfiguration.fromMap((map['tlsInspectionConfiguration'] as Map).cast<String, dynamic>())),
      tlsInspectionConfigurationId: map['tlsInspectionConfigurationId'] == null ? null : pulumi.Output.create<String>(map['tlsInspectionConfigurationId'] as String),
      updateToken: map['updateToken'] == null ? null : pulumi.Output.create<String>(map['updateToken'] as String),
    );
  }
}

