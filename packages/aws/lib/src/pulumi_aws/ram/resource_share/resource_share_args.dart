// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ResourceShare.
class ResourceShareArgs {
  /// Indicates whether principals outside your organization can be associated with a resource share.
  final Input<bool>? allowExternalPrincipals;

  /// The name of the resource share.
  final Input<String>? name;

  /// Specifies the Amazon Resource Names (ARNs) of the RAM permission to associate with the resource share. If you do not specify an ARN for the permission, RAM automatically attaches the default version of the permission for each resource type. You can associate only one permission with each resource type included in the resource share.
  final Input<List<String>>? permissionArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ResourceShareArgs({
    this.allowExternalPrincipals,
    this.name,
    this.permissionArns,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowExternalPrincipalsValue = allowExternalPrincipals;
    if (allowExternalPrincipalsValue != null) {
      map['allowExternalPrincipals'] = allowExternalPrincipalsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final permissionArnsValue = permissionArns;
    if (permissionArnsValue != null) {
      map['permissionArns'] = permissionArnsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ResourceShareArgs.fromMap(Map<String, dynamic> map) {
    return ResourceShareArgs(
      allowExternalPrincipals:
          Input.asOptionalInput<bool>(map['allowExternalPrincipals']),
      name: Input.asOptionalInput<String>(map['name']),
      permissionArns:
          Input.asOptionalInput<List<String>>(map['permissionArns']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
