// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppregistryApplication resources.
class AppregistryApplicationState {
  /// A map with a single tag key-value pair used to associate resources with the application. This attribute can be passed directly into the `tags` argument of another resource, or merged into a map of existing tags.
  final pulumi.Input<Map<String, String>>? applicationTag;
  /// ARN (Amazon Resource Name) of the application.
  final pulumi.Input<String>? arn;
  /// Description of the application.
  final pulumi.Input<String>? description;
  /// Name of the application. The name must be unique within an AWS region.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags assigned to the Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AppregistryApplicationState].
  /// [applicationTag] A map with a single tag key-value pair used to associate resources with the application. This attribute can be passed directly into the `tags` argument of another resource, or merged into a map of existing tags.
  /// [arn] ARN (Amazon Resource Name) of the application.
  /// [description] Description of the application.
  /// [name] Name of the application. The name must be unique within an AWS region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags assigned to the Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AppregistryApplicationState({
    pulumi.Output<Map<String, String>>? applicationTag,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      applicationTag = pulumi.Input.asOptionalInput<Map<String, String>>(applicationTag),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTag': ?applicationTag,
      'arn': ?arn,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AppregistryApplicationState.fromMap(Map<String, dynamic> map) {
    return AppregistryApplicationState(
      applicationTag: map['applicationTag'] == null ? null : pulumi.Output.create<Map<String, String>>((map['applicationTag'] as Map).cast<String, String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

