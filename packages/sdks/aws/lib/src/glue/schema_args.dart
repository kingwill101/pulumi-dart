// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_glue_schema_schema_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_glue_schema_schema_args_doc}
class SchemaArgs {
  /// The compatibility mode of the schema. Values values are: `NONE`, `DISABLED`, `BACKWARD`, `BACKWARD_ALL`, `FORWARD`, `FORWARD_ALL`, `FULL`, and `FULL_ALL`.
  final pulumi.Input<String> compatibility;
  /// The data format of the schema definition. Valid values are `AVRO`, `JSON` and `PROTOBUF`.
  final pulumi.Input<String> dataFormat;
  /// A description of the schema.
  final pulumi.Input<String?>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ARN of the Glue Registry to create the schema in.
  final pulumi.Input<String?>? registryArn;
  /// The schema definition using the `dataFormat` setting for `schemaName`.
  final pulumi.Input<String> schemaDefinition;
  /// The Name of the schema.
  final pulumi.Input<String> schemaName;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SchemaArgs].
  /// [compatibility] The compatibility mode of the schema. Values values are: `NONE`, `DISABLED`, `BACKWARD`, `BACKWARD_ALL`, `FORWARD`, `FORWARD_ALL`, `FULL`, and `FULL_ALL`.
  /// [dataFormat] The data format of the schema definition. Valid values are `AVRO`, `JSON` and `PROTOBUF`.
  /// [description] A description of the schema.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryArn] The ARN of the Glue Registry to create the schema in.
  /// [schemaDefinition] The schema definition using the `dataFormat` setting for `schemaName`.
  /// [schemaName] The Name of the schema.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const SchemaArgs({
    required this.compatibility,
    required this.dataFormat,
    this.description,
    this.region,
    this.registryArn,
    required this.schemaDefinition,
    required this.schemaName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibility': compatibility,
      'dataFormat': dataFormat,
      'description': ?description,
      'region': ?region,
      'registryArn': ?registryArn,
      'schemaDefinition': schemaDefinition,
      'schemaName': schemaName,
      'tags': ?tags,
    };
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      compatibility: pulumi.Input.fromValue(map['compatibility'] as String),
      dataFormat: pulumi.Input.fromValue(map['dataFormat'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryArn: (() { final guardedValue = map['registryArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaDefinition: pulumi.Input.fromValue(map['schemaDefinition'] as String),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
