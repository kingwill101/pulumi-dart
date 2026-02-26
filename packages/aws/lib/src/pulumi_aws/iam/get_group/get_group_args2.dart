// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGroup.
class GetGroupArgs2 {
  /// Friendly IAM group name to match.
  final Input<String> groupName;

  GetGroupArgs2({
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupName'] = groupName;
    return map;
  }

  factory GetGroupArgs2.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs2(
      groupName: Input.asInput<String>(map['groupName']),
    );
  }
}
