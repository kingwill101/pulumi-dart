// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTagKey.
class GetTagKeyArgs {
  /// The resource name of the parent organization or project. It can be in format `organizations/{org_id}` or `projects/{project_id_or_number}`.
  final Input<String> parent;

  /// The tag key's short_name.
  final Input<String> shortName;

  GetTagKeyArgs({
    required this.parent,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    map['shortName'] = shortName;
    return map;
  }

  factory GetTagKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagKeyArgs(
      parent: Input.asInput<String>(map['parent']),
      shortName: Input.asInput<String>(map['shortName']),
    );
  }
}
