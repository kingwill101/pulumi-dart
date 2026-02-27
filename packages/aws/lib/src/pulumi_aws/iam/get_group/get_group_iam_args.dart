// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGroup.
class GetGroupIamArgs {
  /// Friendly IAM group name to match.
  final pulumi.Input<String> groupName;

  GetGroupIamArgs({
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupName'] = groupName;
    return map;
  }

  factory GetGroupIamArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupIamArgs(
      groupName: pulumi.Input.asInput<String>(map['groupName']),
    );
  }
}
