// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Schema.
class SchemaArgs2 {
  /// The schema specification. Must be a valid Open API 3.0 spec.
  final Input<String> content;

  /// The description of the schema. Maximum of 256 characters.
  final Input<String>? description;

  /// The name of the schema. Maximum of 385 characters consisting of lower case letters, upper case letters, ., -, _, @.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the registry in which this schema belongs.
  final Input<String> registryName;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The type of the schema. Valid values: `OpenApi3` or `JSONSchemaDraft4`.
  final Input<String> type;

  SchemaArgs2({
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

  factory SchemaArgs2.fromMap(Map<String, dynamic> map) {
    return SchemaArgs2(
      content: Input.asInput<String>(map['content']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      registryName: Input.asInput<String>(map['registryName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
