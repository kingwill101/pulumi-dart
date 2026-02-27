// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationalUnit.
class OrganizationalUnitArgs {
  /// The name for the organizational unit
  final pulumi.Input<String>? name;

  /// ID of the parent organizational unit, which may be the root
  final pulumi.Input<String> parentId;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  OrganizationalUnitArgs({
    this.name,
    required this.parentId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parentId'] = parentId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory OrganizationalUnitArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationalUnitArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parentId: pulumi.Input.asInput<String>(map['parentId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
