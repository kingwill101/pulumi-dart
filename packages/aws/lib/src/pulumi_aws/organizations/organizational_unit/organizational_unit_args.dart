// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationalUnit.
class OrganizationalUnitArgs {
  /// The name for the organizational unit
  final Input<String>? name;

  /// ID of the parent organizational unit, which may be the root
  final Input<String> parentId;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      name: Input.asOptionalInput<String>(map['name']),
      parentId: Input.asInput<String>(map['parentId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
