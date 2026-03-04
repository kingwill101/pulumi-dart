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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      compatibility: (() {
        final guardedValue = map['compatibility'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataFormat: (() {
        final guardedValue = map['dataFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      latestSchemaVersion: (() {
        final guardedValue = map['latestSchemaVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nextSchemaVersion: (() {
        final guardedValue = map['nextSchemaVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registryArn: (() {
        final guardedValue = map['registryArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registryName: (() {
        final guardedValue = map['registryName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemaCheckpoint: (() {
        final guardedValue = map['schemaCheckpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      schemaDefinition: (() {
        final guardedValue = map['schemaDefinition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemaName: (() {
        final guardedValue = map['schemaName'];
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
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
