// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Configuration resources.
class ConfigurationState {
  /// ARN of the configuration.
  final pulumi.Input<String?>? arn;
  /// Description of the configuration.
  final pulumi.Input<String?>? description;
  /// List of Apache Kafka versions which can use this configuration.
  final pulumi.Input<List<String>?>? kafkaVersions;
  /// Latest revision of the configuration.
  final pulumi.Input<int?>? latestRevision;
  /// Name of the configuration.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Contents of the server.properties file. Supported properties are documented in the [MSK Developer Guide](https://docs.aws.amazon.com/msk/latest/developerguide/msk-configuration-properties.html).
  final pulumi.Input<String?>? serverProperties;

  /// Creates a new [ConfigurationState].
  /// [arn] ARN of the configuration.
  /// [description] Description of the configuration.
  /// [kafkaVersions] List of Apache Kafka versions which can use this configuration.
  /// [latestRevision] Latest revision of the configuration.
  /// [name] Name of the configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverProperties] Contents of the server.properties file. Supported properties are documented in the [MSK Developer Guide](https://docs.aws.amazon.com/msk/latest/developerguide/msk-configuration-properties.html).
  const ConfigurationState({
    this.arn,
    this.description,
    this.kafkaVersions,
    this.latestRevision,
    this.name,
    this.region,
    this.serverProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'kafkaVersions': ?kafkaVersions,
      'latestRevision': ?latestRevision,
      'name': ?name,
      'region': ?region,
      'serverProperties': ?serverProperties,
    };
  }

  factory ConfigurationState.fromMap(Map<String, dynamic> map) {
    return ConfigurationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kafkaVersions: (() { final guardedValue = map['kafkaVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      latestRevision: (() { final guardedValue = map['latestRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverProperties: (() { final guardedValue = map['serverProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
