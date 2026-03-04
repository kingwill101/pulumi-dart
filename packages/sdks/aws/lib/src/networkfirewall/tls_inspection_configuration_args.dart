// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_inspection_configuration_encryption_configuration.dart';
import 'tls_inspection_configuration_timeouts.dart';
import 'tls_inspection_configuration_tls_inspection_configuration.dart';

/// {@template pulumi_networkfirewall_tls_inspection_configuration_tls_inspection_configuration_args_doc}
/// The set of arguments for TlsInspectionConfiguration.
/// {@endtemplate}
/// {@macro pulumi_networkfirewall_tls_inspection_configuration_tls_inspection_configuration_args_doc}
class TlsInspectionConfigurationArgs {
  /// Description of the TLS inspection configuration.
  final pulumi.Input<String>? description;

  /// Encryption configuration block. Detailed below.
  final pulumi.Input<List<TlsInspectionConfigurationEncryptionConfiguration>>?
  encryptionConfigurations;

  /// Descriptive name of the TLS inspection configuration.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<TlsInspectionConfigurationTimeouts>? timeouts;

  /// TLS inspection configuration block. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<TlsInspectionConfigurationTlsInspectionConfiguration>
  tlsInspectionConfiguration;

  /// Creates a new [TlsInspectionConfigurationArgs].
  /// [description] Description of the TLS inspection configuration.
  /// [encryptionConfigurations] Encryption configuration block. Detailed below.
  /// [name] Descriptive name of the TLS inspection configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [timeouts] Optional.
  /// [tlsInspectionConfiguration] TLS inspection configuration block. Detailed below.
  TlsInspectionConfigurationArgs({
    this.description,
    this.encryptionConfigurations,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
    required this.tlsInspectionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encryptionConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<TlsInspectionConfigurationEncryptionConfiguration>,
            List<Map<String, dynamic>>
          >(
            encryptionConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  TlsInspectionConfigurationEncryptionConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            TlsInspectionConfigurationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'tlsInspectionConfiguration':
          pulumi.Input.mapInputValue<
            TlsInspectionConfigurationTlsInspectionConfiguration,
            Map<String, dynamic>
          >(tlsInspectionConfiguration, (value) => value.toMap()),
    };
  }

  factory TlsInspectionConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionConfigurations: (() {
        final guardedValue = map['encryptionConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            TlsInspectionConfigurationEncryptionConfiguration
          >(
            guardedValue,
            (value) =>
                TlsInspectionConfigurationEncryptionConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TlsInspectionConfigurationTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tlsInspectionConfiguration: pulumi.Input.fromValue(
        TlsInspectionConfigurationTlsInspectionConfiguration.fromMap(
          (map['tlsInspectionConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
