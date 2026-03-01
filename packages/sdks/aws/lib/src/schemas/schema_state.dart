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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? content,
    pulumi.Output<String>? description,
    pulumi.Output<String>? lastModified,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? registryName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<String>? version,
    pulumi.Output<String>? versionCreatedDate,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      content = pulumi.Input.asOptionalInput<String>(content),
      description = pulumi.Input.asOptionalInput<String>(description),
      lastModified = pulumi.Input.asOptionalInput<String>(lastModified),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryName = pulumi.Input.asOptionalInput<String>(registryName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      version = pulumi.Input.asOptionalInput<String>(version),
      versionCreatedDate = pulumi.Input.asOptionalInput<String>(versionCreatedDate);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      lastModified: map['lastModified'] == null ? null : pulumi.Output.create<String>(map['lastModified'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryName: map['registryName'] == null ? null : pulumi.Output.create<String>(map['registryName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      versionCreatedDate: map['versionCreatedDate'] == null ? null : pulumi.Output.create<String>(map['versionCreatedDate'] as String),
    );
  }
}

