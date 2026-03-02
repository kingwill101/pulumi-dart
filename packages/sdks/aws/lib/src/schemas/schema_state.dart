// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Schema resources.
class SchemaState {
  /// The Amazon Resource Name (ARN) of the discoverer.
  final pulumi.Input<String>? arn;
  /// The schema specification. Must be a valid Open API 3.0 spec.
  final pulumi.Input<String>? content;
  /// The description of the schema. Maximum of 256 characters.
  final pulumi.Input<String>? description;
  /// The last modified date of the schema.
  final pulumi.Input<String>? lastModified;
  /// The name of the schema. Maximum of 385 characters consisting of lower case letters, upper case letters, ., -, _, @.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the registry in which this schema belongs.
  final pulumi.Input<String>? registryName;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The type of the schema. Valid values: `OpenApi3` or `JSONSchemaDraft4`.
  final pulumi.Input<String>? type;
  /// The version of the schema.
  final pulumi.Input<String>? version;
  /// The created date of the version of the schema.
  final pulumi.Input<String>? versionCreatedDate;

  /// Creates a new [SchemaState].
  /// [arn] The Amazon Resource Name (ARN) of the discoverer.
  /// [content] The schema specification. Must be a valid Open API 3.0 spec.
  /// [description] The description of the schema. Maximum of 256 characters.
  /// [lastModified] The last modified date of the schema.
  /// [name] The name of the schema. Maximum of 385 characters consisting of lower case letters, upper case letters, ., -, _, @.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryName] The name of the registry in which this schema belongs.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of the schema. Valid values: `OpenApi3` or `JSONSchemaDraft4`.
  /// [version] The version of the schema.
  /// [versionCreatedDate] The created date of the version of the schema.
  SchemaState({
    this.arn,
    this.content,
    this.description,
    this.lastModified,
    this.name,
    this.region,
    this.registryName,
    this.tags,
    this.tagsAll,
    this.type,
    this.version,
    this.versionCreatedDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'content': ?content,
      'description': ?description,
      'lastModified': ?lastModified,
      'name': ?name,
      'region': ?region,
      'registryName': ?registryName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'version': ?version,
      'versionCreatedDate': ?versionCreatedDate,
    };
  }

  factory SchemaState.fromMap(Map<String, dynamic> map) {
    return SchemaState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      content: map['content'] == null ? null : ((map['content'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      lastModified: map['lastModified'] == null ? null : ((map['lastModified'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      registryName: map['registryName'] == null ? null : ((map['registryName'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
      versionCreatedDate: map['versionCreatedDate'] == null ? null : ((map['versionCreatedDate'] as String).input()).input(),
    );
  }
}

