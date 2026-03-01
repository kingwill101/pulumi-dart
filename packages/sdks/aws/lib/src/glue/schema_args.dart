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
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the Glue Registry to create the schema in.
  final pulumi.Input<String>? registryArn;
  /// The schema definition using the `data_format` setting for `schema_name`.
  final pulumi.Input<String> schemaDefinition;
  /// The Name of the schema.
  final pulumi.Input<String> schemaName;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SchemaArgs].
  /// [compatibility] The compatibility mode of the schema. Values values are: `NONE`, `DISABLED`, `BACKWARD`, `BACKWARD_ALL`, `FORWARD`, `FORWARD_ALL`, `FULL`, and `FULL_ALL`.
  /// [dataFormat] The data format of the schema definition. Valid values are `AVRO`, `JSON` and `PROTOBUF`.
  /// [description] A description of the schema.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryArn] The ARN of the Glue Registry to create the schema in.
  /// [schemaDefinition] The schema definition using the `data_format` setting for `schema_name`.
  /// [schemaName] The Name of the schema.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  SchemaArgs({
    required pulumi.Output<String> compatibility,
    required pulumi.Output<String> dataFormat,
    pulumi.Output<String>? description,
    pulumi.Output<String>? region,
    pulumi.Output<String>? registryArn,
    required pulumi.Output<String> schemaDefinition,
    required pulumi.Output<String> schemaName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      compatibility = pulumi.Input.asInput<String>(compatibility),
      dataFormat = pulumi.Input.asInput<String>(dataFormat),
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryArn = pulumi.Input.asOptionalInput<String>(registryArn),
      schemaDefinition = pulumi.Input.asInput<String>(schemaDefinition),
      schemaName = pulumi.Input.asInput<String>(schemaName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      compatibility: pulumi.Output.create<String>(map['compatibility'] as String),
      dataFormat: pulumi.Output.create<String>(map['dataFormat'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryArn: map['registryArn'] == null ? null : pulumi.Output.create<String>(map['registryArn'] as String),
      schemaDefinition: pulumi.Output.create<String>(map['schemaDefinition'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

