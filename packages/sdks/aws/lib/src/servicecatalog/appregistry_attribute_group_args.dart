// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_appregistry_attribute_group_appregistry_attribute_group_args_doc}
/// The set of arguments for AppregistryAttributeGroup.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_appregistry_attribute_group_appregistry_attribute_group_args_doc}
class AppregistryAttributeGroupArgs {
  /// A JSON string of nested key-value pairs that represents the attributes of the group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> attributes;
  /// Description of the Attribute Group.
  final pulumi.Input<String>? description;
  /// Name of the Attribute Group.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags assigned to the Attribute Group. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AppregistryAttributeGroupArgs].
  /// [attributes] A JSON string of nested key-value pairs that represents the attributes of the group.
  /// [description] Description of the Attribute Group.
  /// [name] Name of the Attribute Group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags assigned to the Attribute Group. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AppregistryAttributeGroupArgs({
    required pulumi.Output<String> attributes,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      attributes = pulumi.Input.asInput<String>(attributes),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory AppregistryAttributeGroupArgs.fromMap(Map<String, dynamic> map) {
    return AppregistryAttributeGroupArgs(
      attributes: pulumi.Output.create<String>(map['attributes'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

