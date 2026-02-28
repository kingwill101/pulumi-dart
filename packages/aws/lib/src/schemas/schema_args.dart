// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_schemas_schema_schema_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_schemas_schema_schema_args_doc}
class SchemaArgs {
  /// The schema specification. Must be a valid Open API 3.0 spec.
  final pulumi.Input<String> content;
  /// The description of the schema. Maximum of 256 characters.
  final pulumi.Input<String>? description;
  /// The name of the schema. Maximum of 385 characters consisting of lower case letters, upper case letters, ., -, _, @.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the registry in which this schema belongs.
  final pulumi.Input<String> registryName;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the schema. Valid values: `OpenApi3` or `JSONSchemaDraft4`.
  final pulumi.Input<String> type;

  /// Creates a new [SchemaArgs].
  /// [content] The schema specification. Must be a valid Open API 3.0 spec.
  /// [description] The description of the schema. Maximum of 256 characters.
  /// [name] The name of the schema. Maximum of 385 characters consisting of lower case letters, upper case letters, ., -, _, @.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryName] The name of the registry in which this schema belongs.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The type of the schema. Valid values: `OpenApi3` or `JSONSchemaDraft4`.
  SchemaArgs({
    required String content,
    String? description,
    String? name,
    String? region,
    required String registryName,
    Map<String, String>? tags,
    required String type,
  }) :
      content = pulumi.Input.asInput<String>(content),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryName = pulumi.Input.asInput<String>(registryName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'registryName': registryName,
      'tags': ?tags,
      'type': type,
    };
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      content: map['content'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      registryName: map['registryName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

