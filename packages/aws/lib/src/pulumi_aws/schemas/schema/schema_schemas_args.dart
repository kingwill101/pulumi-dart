// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Schema.
class SchemaSchemasArgs {
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

  SchemaSchemasArgs({
    required this.content,
    this.description,
    this.name,
    this.region,
    required this.registryName,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['registryName'] = registryName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    return map;
  }

  factory SchemaSchemasArgs.fromMap(Map<String, dynamic> map) {
    return SchemaSchemasArgs(
      content: pulumi.Input.asInput<String>(map['content']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      registryName: pulumi.Input.asInput<String>(map['registryName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
