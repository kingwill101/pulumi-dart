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
  const GetGroupArgs({
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
    };
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
    );
  }
}

