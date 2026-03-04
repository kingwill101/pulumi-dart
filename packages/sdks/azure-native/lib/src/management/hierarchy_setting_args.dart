// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_hierarchy_setting_args_doc}
/// The set of arguments for HierarchySetting.
/// {@endtemplate}
/// {@macro pulumi_management_hierarchy_setting_args_doc}
class HierarchySettingArgs {
  /// Settings that sets the default Management Group under which new subscriptions get added in this tenant. For example, /providers/Microsoft.Management/managementGroups/defaultGroup
  final pulumi.Input<String>? defaultManagementGroup;

  /// Management Group ID.
  final pulumi.Input<String> groupId;

  /// Indicates whether RBAC access is required upon group creation under the root Management Group. If set to true, user will require Microsoft.Management/managementGroups/write action on the root Management Group scope in order to create new Groups directly under the root. This will prevent new users from creating new Management Groups, unless they are given access.
  final pulumi.Input<bool>? requireAuthorizationForGroupCreation;

  /// Creates a new [HierarchySettingArgs].
  /// [defaultManagementGroup] Settings that sets the default Management Group under which new subscriptions get added in this tenant. For example, /providers/Microsoft.Management/managementGroups/defaultGroup
  /// [groupId] Management Group ID.
  /// [requireAuthorizationForGroupCreation] Indicates whether RBAC access is required upon group creation under the root Management Group. If set to true, user will require Microsoft.Management/managementGroups/write action on the root Management Group scope in order to create new Groups directly under the root. This will prevent new users from creating new Management Groups, unless they are given access.
  HierarchySettingArgs({
    this.defaultManagementGroup,
    required this.groupId,
    this.requireAuthorizationForGroupCreation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultManagementGroup': ?defaultManagementGroup,
      'groupId': groupId,
      'requireAuthorizationForGroupCreation':
          ?requireAuthorizationForGroupCreation,
    };
  }

  factory HierarchySettingArgs.fromMap(Map<String, dynamic> map) {
    return HierarchySettingArgs(
      defaultManagementGroup: (() {
        final guardedValue = map['defaultManagementGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      requireAuthorizationForGroupCreation: (() {
        final guardedValue = map['requireAuthorizationForGroupCreation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
