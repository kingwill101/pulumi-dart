// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UserHierarchyGroup.
class UserHierarchyGroupArgs {
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final Input<String> instanceId;

  /// The name of the user hierarchy group. Must not be more than 100 characters.
  final Input<String>? name;

  /// The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null.
  final Input<String>? parentGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags to apply to the hierarchy group. If configured with a provider
  /// <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  UserHierarchyGroupArgs({
    required this.instanceId,
    this.name,
    this.parentGroupId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentGroupIdValue = parentGroupId;
    if (parentGroupIdValue != null) {
      map['parentGroupId'] = parentGroupIdValue;
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

  factory UserHierarchyGroupArgs.fromMap(Map<String, dynamic> map) {
    return UserHierarchyGroupArgs(
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      parentGroupId: Input.asOptionalInput<String>(map['parentGroupId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
