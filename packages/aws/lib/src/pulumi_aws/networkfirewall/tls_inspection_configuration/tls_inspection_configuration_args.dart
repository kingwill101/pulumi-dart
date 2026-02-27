// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../tls_inspection_configuration_encryption_configuration/tls_inspection_configuration_encryption_configuration.dart';
import '../tls_inspection_configuration_timeouts/tls_inspection_configuration_timeouts.dart';
import '../tls_inspection_configuration_tls_inspection_configuration/tls_inspection_configuration_tls_inspection_configuration.dart';

/// The set of arguments for TlsInspectionConfiguration.
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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptionConfigurationsValue = encryptionConfigurations;
    if (encryptionConfigurationsValue != null) {
      map['encryptionConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<TlsInspectionConfigurationEncryptionConfiguration>,
              List<Map<String, dynamic>>>(
          encryptionConfigurationsValue,
          (value) => pulumi.Input.encodeList<
              TlsInspectionConfigurationEncryptionConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          TlsInspectionConfigurationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['tlsInspectionConfiguration'] = pulumi.Input.mapInputValue<
            TlsInspectionConfigurationTlsInspectionConfiguration,
            Map<String, dynamic>>(
        tlsInspectionConfiguration, (value) => value.toMap());
    return map;
  }

  factory TlsInspectionConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      encryptionConfigurations: pulumi.Input.asOptionalInput<
              List<TlsInspectionConfigurationEncryptionConfiguration>>(
          map['encryptionConfigurations']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<TlsInspectionConfigurationTimeouts>(
              map['timeouts']),
      tlsInspectionConfiguration: pulumi.Input.asInput<
              TlsInspectionConfigurationTlsInspectionConfiguration>(
          map['tlsInspectionConfiguration']),
    );
  }
}
