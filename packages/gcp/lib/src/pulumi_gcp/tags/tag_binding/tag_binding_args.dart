// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TagBinding.
class TagBindingArgs {
  /// The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  final Input<String> parent;

  /// The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  final Input<String> tagValue;

  TagBindingArgs({
    required this.parent,
    required this.tagValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    map['tagValue'] = tagValue;
    return map;
  }

  factory TagBindingArgs.fromMap(Map<String, dynamic> map) {
    return TagBindingArgs(
      parent: Input.asInput<String>(map['parent']),
      tagValue: Input.asInput<String>(map['tagValue']),
    );
  }
}
