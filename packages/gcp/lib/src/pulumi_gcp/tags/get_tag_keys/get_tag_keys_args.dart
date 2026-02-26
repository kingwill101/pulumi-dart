// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTagKeys.
class GetTagKeysArgs {
  /// The resource name of the parent organization or project. It can be in format `organizations/{org_id}` or `projects/{project_id_or_number}`.
  final Input<String> parent;

  GetTagKeysArgs({
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    return map;
  }

  factory GetTagKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetTagKeysArgs(
      parent: Input.asInput<String>(map['parent']),
    );
  }
}
