// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Schema resources.
class SchemaState {
  /// ARN of the schema.
  final pulumi.Input<String?>? arn;
  /// Compatibility mode of the schema. Values values are: `NONE`, `DISABLED`, `BACKWARD`, `BACKWARD_ALL`, `FORWARD`, `FORWARD_ALL`, `FULL`, and `FULL_ALL`.
  final pulumi.Input<String?>? compatibility;
  /// Data format of the schema definition. Valid values are `AVRO`, `JSON` and `PROTOBUF`.
  final pulumi.Input<String?>? dataFormat;
  /// Description of the schema.
  final pulumi.Input<String?>? description;
  /// Latest version of the schema associated with the returned schema definition.
  final pulumi.Input<int?>? latestSchemaVersion;
  /// Next version of the schema associated with the returned schema definition.
  final pulumi.Input<int?>? nextSchemaVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the Glue Registry to create the schema in.
  final pulumi.Input<String?>? registryArn;
  /// Name of the Glue Registry.
  final pulumi.Input<String?>? registryName;
  /// Version number of the checkpoint (the last time the compatibility mode was changed).
  final pulumi.Input<int?>? schemaCheckpoint;
  /// Schema definition using the `dataFormat` setting for `schemaName`.
  final pulumi.Input<String?>? schemaDefinition;
  /// Name of the schema.
  final pulumi.Input<String?>? schemaName;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [SchemaState].
  /// [arn] ARN of the schema.
  /// [compatibility] Compatibility mode of the schema. Values values are: `NONE`, `DISABLED`, `BACKWARD`, `BACKWARD_ALL`, `FORWARD`, `FORWARD_ALL`, `FULL`, and `FULL_ALL`.
  /// [dataFormat] Data format of the schema definition. Valid values are `AVRO`, `JSON` and `PROTOBUF`.
  /// [description] Description of the schema.
  /// [latestSchemaVersion] Latest version of the schema associated with the returned schema definition.
  /// [nextSchemaVersion] Next version of the schema associated with the returned schema definition.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryArn] ARN of the Glue Registry to create the schema in.
  /// [registryName] Name of the Glue Registry.
  /// [schemaCheckpoint] Version number of the checkpoint (the last time the compatibility mode was changed).
  /// [schemaDefinition] Schema definition using the `dataFormat` setting for `schemaName`.
  /// [schemaName] Name of the schema.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const SchemaState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compatibility: (() { final guardedValue = map['compatibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFormat: (() { final guardedValue = map['dataFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestSchemaVersion: (() { final guardedValue = map['latestSchemaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      nextSchemaVersion: (() { final guardedValue = map['nextSchemaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryArn: (() { final guardedValue = map['registryArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryName: (() { final guardedValue = map['registryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaCheckpoint: (() { final guardedValue = map['schemaCheckpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      schemaDefinition: (() { final guardedValue = map['schemaDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaName: (() { final guardedValue = map['schemaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
