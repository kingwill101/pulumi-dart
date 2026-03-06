// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_get_hierarchy_setting_args_doc}
/// Arguments for getHierarchySetting.
/// {@endtemplate}
/// {@macro pulumi_management_get_hierarchy_setting_args_doc}
class GetHierarchySettingArgs {
  /// Management Group ID.
  final pulumi.Input<String> groupId;

  /// Creates a new [GetHierarchySettingArgs].
  /// [groupId] Management Group ID.
  const GetHierarchySettingArgs({
    required this.groupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
    };
  }

  factory GetHierarchySettingArgs.fromMap(Map<String, dynamic> map) {
    return GetHierarchySettingArgs(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
    );
  }
}

