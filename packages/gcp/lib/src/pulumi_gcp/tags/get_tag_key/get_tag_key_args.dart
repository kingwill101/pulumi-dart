// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTagKey.
class GetTagKeyArgs {
  /// The resource name of the parent organization or project. It can be in format `organizations/{org_id}` or `projects/{project_id_or_number}`.
  final pulumi.Input<String> parent;

  /// The tag key's short_name.
  final pulumi.Input<String> shortName;

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
      parent: pulumi.Input.asInput<String>(map['parent']),
      shortName: pulumi.Input.asInput<String>(map['shortName']),
    );
  }
}
