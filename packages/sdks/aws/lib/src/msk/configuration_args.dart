// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msk_configuration_configuration_args_doc}
/// The set of arguments for Configuration.
/// {@endtemplate}
/// {@macro pulumi_msk_configuration_configuration_args_doc}
class ConfigurationArgs {
  /// Description of the configuration.
  final pulumi.Input<String>? description;
  /// List of Apache Kafka versions which can use this configuration.
  final pulumi.Input<List<String>>? kafkaVersions;
  /// Name of the configuration.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Contents of the server.properties file. Supported properties are documented in the [MSK Developer Guide](https://docs.aws.amazon.com/msk/latest/developerguide/msk-configuration-properties.html).
  final pulumi.Input<String> serverProperties;

  /// Creates a new [ConfigurationArgs].
  /// [description] Description of the configuration.
  /// [kafkaVersions] List of Apache Kafka versions which can use this configuration.
  /// [name] Name of the configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverProperties] Contents of the server.properties file. Supported properties are documented in the [MSK Developer Guide](https://docs.aws.amazon.com/msk/latest/developerguide/msk-configuration-properties.html).
  const ConfigurationArgs({
    this.description,
    this.kafkaVersions,
    this.name,
    this.region,
    required this.serverProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kafkaVersions': ?kafkaVersions,
      'name': ?name,
      'region': ?region,
      'serverProperties': serverProperties,
    };
  }

  factory ConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kafkaVersions: (() { final guardedValue = map['kafkaVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverProperties: pulumi.Input.fromValue(map['serverProperties'] as String),
    );
  }
}

