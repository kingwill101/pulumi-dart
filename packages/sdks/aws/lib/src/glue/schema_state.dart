// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Schema resources.
class SchemaState {
  /// Amazon Resource Name (ARN) of the schema.
  final pulumi.Input<String>? arn;
  /// The compatibility mode of the schema. Values values are: `NONE`, `DISABLED`, `BACKWARD`, `BACKWARD_ALL`, `FORWARD`, `FORWARD_ALL`, `FULL`, and `FULL_ALL`.
  final pulumi.Input<String>? compatibility;
  /// The data format of the schema definition. Valid values are `AVRO`, `JSON` and `PROTOBUF`.
  final pulumi.Input<String>? dataFormat;
  /// A description of the schema.
  final pulumi.Input<String>? description;
  /// The latest version of the schema associated with the returned schema definition.
  final pulumi.Input<int>? latestSchemaVersion;
  /// The next version of the schema associated with the returned schema definition.
  final pulumi.Input<int>? nextSchemaVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the Glue Registry to create the schema in.
  final pulumi.Input<String>? registryArn;
  /// The name of the Glue Registry.
  final pulumi.Input<String>? registryName;
  /// The version number of the checkpoint (the last time the compatibility mode was changed).
  final pulumi.Input<int>? schemaCheckpoint;
  /// The schema definition using the `data_format` setting for `schema_name`.
  final pulumi.Input<String>? schemaDefinition;
  /// The Name of the schema.
  final pulumi.Input<String>? schemaName;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [SchemaState].
  /// [arn] Amazon Resource Name (ARN) of the schema.
  /// [compatibility] The compatibility mode of the schema. Values values are: `NONE`, `DISABLED`, `BACKWARD`, `BACKWARD_ALL`, `FORWARD`, `FORWARD_ALL`, `FULL`, and `FULL_ALL`.
  /// [dataFormat] The data format of the schema definition. Valid values are `AVRO`, `JSON` and `PROTOBUF`.
  /// [description] A description of the schema.
  /// [latestSchemaVersion] The latest version of the schema associated with the returned schema definition.
  /// [nextSchemaVersion] The next version of the schema associated with the returned schema definition.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryArn] The ARN of the Glue Registry to create the schema in.
  /// [registryName] The name of the Glue Registry.
  /// [schemaCheckpoint] The version number of the checkpoint (the last time the compatibility mode was changed).
  /// [schemaDefinition] The schema definition using the `data_format` setting for `schema_name`.
  /// [schemaName] The Name of the schema.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  SchemaState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? compatibility,
    pulumi.Output<String>? dataFormat,
    pulumi.Output<String>? description,
    pulumi.Output<int>? latestSchemaVersion,
    pulumi.Output<int>? nextSchemaVersion,
    pulumi.Output<String>? region,
    pulumi.Output<String>? registryArn,
    pulumi.Output<String>? registryName,
    pulumi.Output<int>? schemaCheckpoint,
    pulumi.Output<String>? schemaDefinition,
    pulumi.Output<String>? schemaName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      compatibility = pulumi.Input.asOptionalInput<String>(compatibility),
      dataFormat = pulumi.Input.asOptionalInput<String>(dataFormat),
      description = pulumi.Input.asOptionalInput<String>(description),
      latestSchemaVersion = pulumi.Input.asOptionalInput<int>(latestSchemaVersion),
      nextSchemaVersion = pulumi.Input.asOptionalInput<int>(nextSchemaVersion),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryArn = pulumi.Input.asOptionalInput<String>(registryArn),
      registryName = pulumi.Input.asOptionalInput<String>(registryName),
      schemaCheckpoint = pulumi.Input.asOptionalInput<int>(schemaCheckpoint),
      schemaDefinition = pulumi.Input.asOptionalInput<String>(schemaDefinition),
      schemaName = pulumi.Input.asOptionalInput<String>(schemaName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'compatibility': ?compatibility,
      'dataFormat': ?dataFormat,
      'description': ?description,
      'latestSchemaVersion': ?latestSchemaVersion,
      'nextSchemaVersion': ?nextSchemaVersion,
      'region': ?region,
      'registryArn': ?registryArn,
      'registryName': ?registryName,
      'schemaCheckpoint': ?schemaCheckpoint,
      'schemaDefinition': ?schemaDefinition,
      'schemaName': ?schemaName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory SchemaState.fromMap(Map<String, dynamic> map) {
    return SchemaState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      compatibility: map['compatibility'] == null ? null : pulumi.Output.create<String>(map['compatibility'] as String),
      dataFormat: map['dataFormat'] == null ? null : pulumi.Output.create<String>(map['dataFormat'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      latestSchemaVersion: map['latestSchemaVersion'] == null ? null : pulumi.Output.create<int>(map['latestSchemaVersion'] as int),
      nextSchemaVersion: map['nextSchemaVersion'] == null ? null : pulumi.Output.create<int>(map['nextSchemaVersion'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryArn: map['registryArn'] == null ? null : pulumi.Output.create<String>(map['registryArn'] as String),
      registryName: map['registryName'] == null ? null : pulumi.Output.create<String>(map['registryName'] as String),
      schemaCheckpoint: map['schemaCheckpoint'] == null ? null : pulumi.Output.create<int>(map['schemaCheckpoint'] as int),
      schemaDefinition: map['schemaDefinition'] == null ? null : pulumi.Output.create<String>(map['schemaDefinition'] as String),
      schemaName: map['schemaName'] == null ? null : pulumi.Output.create<String>(map['schemaName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

