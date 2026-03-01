// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Configuration resources.
class ConfigurationState {
  /// Amazon Resource Name (ARN) of the configuration.
  final pulumi.Input<String>? arn;
  /// Description of the configuration.
  final pulumi.Input<String>? description;
  /// List of Apache Kafka versions which can use this configuration.
  final pulumi.Input<List<String>>? kafkaVersions;
  /// Latest revision of the configuration.
  final pulumi.Input<int>? latestRevision;
  /// Name of the configuration.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Contents of the server.properties file. Supported properties are documented in the [MSK Developer Guide](https://docs.aws.amazon.com/msk/latest/developerguide/msk-configuration-properties.html).
  final pulumi.Input<String>? serverProperties;

  /// Creates a new [ConfigurationState].
  /// [arn] Amazon Resource Name (ARN) of the configuration.
  /// [description] Description of the configuration.
  /// [kafkaVersions] List of Apache Kafka versions which can use this configuration.
  /// [latestRevision] Latest revision of the configuration.
  /// [name] Name of the configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverProperties] Contents of the server.properties file. Supported properties are documented in the [MSK Developer Guide](https://docs.aws.amazon.com/msk/latest/developerguide/msk-configuration-properties.html).
  ConfigurationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? kafkaVersions,
    pulumi.Output<int>? latestRevision,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serverProperties,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      kafkaVersions = pulumi.Input.asOptionalInput<List<String>>(kafkaVersions),
      latestRevision = pulumi.Input.asOptionalInput<int>(latestRevision),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverProperties = pulumi.Input.asOptionalInput<String>(serverProperties);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kafkaVersions: map['kafkaVersions'] == null ? null : pulumi.Output.create<List<String>>((map['kafkaVersions'] as List).cast<String>()),
      latestRevision: map['latestRevision'] == null ? null : pulumi.Output.create<int>(map['latestRevision'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serverProperties: map['serverProperties'] == null ? null : pulumi.Output.create<String>(map['serverProperties'] as String),
    );
  }
}

