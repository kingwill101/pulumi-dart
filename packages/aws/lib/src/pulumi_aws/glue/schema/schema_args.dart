// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Schema.
class SchemaArgs {
  /// The compatibility mode of the schema. Values values are: `NONE`, `DISABLED`, `BACKWARD`, `BACKWARD_ALL`, `FORWARD`, `FORWARD_ALL`, `FULL`, and `FULL_ALL`.
  final Input<String> compatibility;

  /// The data format of the schema definition. Valid values are `AVRO`, `JSON` and `PROTOBUF`.
  final Input<String> dataFormat;

  /// A description of the schema.
  final Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the Glue Registry to create the schema in.
  final Input<String>? registryArn;

  /// The schema definition using the <span pulumi-lang-nodejs="`dataFormat`" pulumi-lang-dotnet="`DataFormat`" pulumi-lang-go="`dataFormat`" pulumi-lang-python="`data_format`" pulumi-lang-yaml="`dataFormat`" pulumi-lang-java="`dataFormat`">`data_format`</span> setting for <span pulumi-lang-nodejs="`schemaName`" pulumi-lang-dotnet="`SchemaName`" pulumi-lang-go="`schemaName`" pulumi-lang-python="`schema_name`" pulumi-lang-yaml="`schemaName`" pulumi-lang-java="`schemaName`">`schema_name`</span>.
  final Input<String> schemaDefinition;

  /// The Name of the schema.
  final Input<String> schemaName;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      compatibility: Input.asInput<String>(map['compatibility']),
      dataFormat: Input.asInput<String>(map['dataFormat']),
      description: Input.asOptionalInput<String>(map['description']),
      region: Input.asOptionalInput<String>(map['region']),
      registryArn: Input.asOptionalInput<String>(map['registryArn']),
      schemaDefinition: Input.asInput<String>(map['schemaDefinition']),
      schemaName: Input.asInput<String>(map['schemaName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
