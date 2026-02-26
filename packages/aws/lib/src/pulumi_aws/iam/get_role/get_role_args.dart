// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRole.
class GetRoleArgs {
  /// Friendly IAM role name to match.
  final Input<String> name;

  /// Tags attached to the role.
  final Input<Map<String, String>>? tags;

  GetRoleArgs({
    required this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleArgs(
      name: Input.asInput<String>(map['name']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
