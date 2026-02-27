// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Schema.
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

  SchemaArgs({
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
    final map = <String, dynamic>{};
    map['compatibility'] = compatibility;
    map['dataFormat'] = dataFormat;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final registryArnValue = registryArn;
    if (registryArnValue != null) {
      map['registryArn'] = registryArnValue;
    }
    map['schemaDefinition'] = schemaDefinition;
    map['schemaName'] = schemaName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      compatibility: pulumi.Input.asInput<String>(map['compatibility']),
      dataFormat: pulumi.Input.asInput<String>(map['dataFormat']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      registryArn: pulumi.Input.asOptionalInput<String>(map['registryArn']),
      schemaDefinition: pulumi.Input.asInput<String>(map['schemaDefinition']),
      schemaName: pulumi.Input.asInput<String>(map['schemaName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
