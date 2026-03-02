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
    this.arn,
    this.compatibility,
    this.dataFormat,
    this.description,
    this.latestSchemaVersion,
    this.nextSchemaVersion,
    this.region,
    this.registryArn,
    this.registryName,
    this.schemaCheckpoint,
    this.schemaDefinition,
    this.schemaName,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      compatibility: map['compatibility'] == null ? null : ((map['compatibility'] as String).input()).input(),
      dataFormat: map['dataFormat'] == null ? null : ((map['dataFormat'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      latestSchemaVersion: map['latestSchemaVersion'] == null ? null : ((map['latestSchemaVersion'] as int).input()).input(),
      nextSchemaVersion: map['nextSchemaVersion'] == null ? null : ((map['nextSchemaVersion'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      registryArn: map['registryArn'] == null ? null : ((map['registryArn'] as String).input()).input(),
      registryName: map['registryName'] == null ? null : ((map['registryName'] as String).input()).input(),
      schemaCheckpoint: map['schemaCheckpoint'] == null ? null : ((map['schemaCheckpoint'] as int).input()).input(),
      schemaDefinition: map['schemaDefinition'] == null ? null : ((map['schemaDefinition'] as String).input()).input(),
      schemaName: map['schemaName'] == null ? null : ((map['schemaName'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

