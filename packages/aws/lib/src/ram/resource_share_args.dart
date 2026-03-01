// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_resource_share_resource_share_args_doc}
/// The set of arguments for ResourceShare.
/// {@endtemplate}
/// {@macro pulumi_ram_resource_share_resource_share_args_doc}
class ResourceShareArgs {
  /// Indicates whether principals outside your organization can be associated with a resource share.
  final pulumi.Input<bool>? allowExternalPrincipals;

  /// The name of the resource share.
  final pulumi.Input<String>? name;

  /// Specifies the Amazon Resource Names (ARNs) of the RAM permission to associate with the resource share. If you do not specify an ARN for the permission, RAM automatically attaches the default version of the permission for each resource type. You can associate only one permission with each resource type included in the resource share.
  final pulumi.Input<List<String>>? permissionArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceShareArgs].
  /// [allowExternalPrincipals] Indicates whether principals outside your organization can be associated with a resource share.
  /// [name] The name of the resource share.
  /// [permissionArns] Specifies the Amazon Resource Names (ARNs) of the RAM permission to associate with the resource share. If you do not specify an ARN for the permission, RAM automatically attaches the default version of the permission for each resource type. You can associate only one permission with each resource type included in the resource share.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ResourceShareArgs({
    bool? allowExternalPrincipals,
    String? name,
    List<String>? permissionArns,
    String? region,
    Map<String, String>? tags,
  }) : allowExternalPrincipals = pulumi.Input.asOptionalInput<bool>(
         allowExternalPrincipals,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       permissionArns = pulumi.Input.asOptionalInput<List<String>>(
         permissionArns,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowExternalPrincipals': ?allowExternalPrincipals,
      'name': ?name,
      'permissionArns': ?permissionArns,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ResourceShareArgs.fromMap(Map<String, dynamic> map) {
    return ResourceShareArgs(
      allowExternalPrincipals: map['allowExternalPrincipals'] == null
          ? null
          : map['allowExternalPrincipals'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      permissionArns: map['permissionArns'] == null
          ? null
          : (map['permissionArns'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
