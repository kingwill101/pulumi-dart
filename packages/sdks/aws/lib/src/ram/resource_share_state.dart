// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceShare resources.
class ResourceShareState {
  /// Indicates whether principals outside your organization can be associated with a resource share.
  final pulumi.Input<bool>? allowExternalPrincipals;
  /// The Amazon Resource Name (ARN) of the resource share.
  final pulumi.Input<String>? arn;
  /// The name of the resource share.
  final pulumi.Input<String>? name;
  /// Specifies the Amazon Resource Names (ARNs) of the RAM permission to associate with the resource share. If you do not specify an ARN for the permission, RAM automatically attaches the default version of the permission for each resource type. You can associate only one permission with each resource type included in the resource share.
  final pulumi.Input<List<String>>? permissionArns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ResourceShareState].
  /// [allowExternalPrincipals] Indicates whether principals outside your organization can be associated with a resource share.
  /// [arn] The Amazon Resource Name (ARN) of the resource share.
  /// [name] The name of the resource share.
  /// [permissionArns] Specifies the Amazon Resource Names (ARNs) of the RAM permission to associate with the resource share. If you do not specify an ARN for the permission, RAM automatically attaches the default version of the permission for each resource type. You can associate only one permission with each resource type included in the resource share.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ResourceShareState({
    pulumi.Output<bool>? allowExternalPrincipals,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? permissionArns,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      allowExternalPrincipals = pulumi.Input.asOptionalInput<bool>(allowExternalPrincipals),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      permissionArns = pulumi.Input.asOptionalInput<List<String>>(permissionArns),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowExternalPrincipals': ?allowExternalPrincipals,
      'arn': ?arn,
      'name': ?name,
      'permissionArns': ?permissionArns,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ResourceShareState.fromMap(Map<String, dynamic> map) {
    return ResourceShareState(
      allowExternalPrincipals: map['allowExternalPrincipals'] == null ? null : pulumi.Output.create<bool>(map['allowExternalPrincipals'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      permissionArns: map['permissionArns'] == null ? null : pulumi.Output.create<List<String>>((map['permissionArns'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

