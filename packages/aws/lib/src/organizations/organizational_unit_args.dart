// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_organizational_unit_organizational_unit_args_doc}
/// The set of arguments for OrganizationalUnit.
/// {@endtemplate}
/// {@macro pulumi_organizations_organizational_unit_organizational_unit_args_doc}
class OrganizationalUnitArgs {
  /// The name for the organizational unit
  final pulumi.Input<String>? name;

  /// ID of the parent organizational unit, which may be the root
  final pulumi.Input<String> parentId;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [OrganizationalUnitArgs].
  /// [name] The name for the organizational unit
  /// [parentId] ID of the parent organizational unit, which may be the root
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  OrganizationalUnitArgs({
    String? name,
    required String parentId,
    Map<String, String>? tags,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        parentId = pulumi.Input.asInput<String>(parentId),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      name: map['name'] == null ? null : map['name'] as String,
      parentId: map['parentId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
