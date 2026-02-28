// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_group_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_iam_get_group_get_group_args_doc}
class GetGroupArgs {
  /// Friendly IAM group name to match.
  final pulumi.Input<String> groupName;

  /// Creates a new [GetGroupArgs].
  /// [groupName] Friendly IAM group name to match.
  GetGroupArgs({
    required String groupName,
  }) : groupName = pulumi.Input.asInput<String>(groupName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupName'] = groupName;
    return map;
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      groupName: map['groupName'] as String,
    );
  }
}
