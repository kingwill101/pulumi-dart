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
    pulumi.Output<String>? defaultManagementGroup,
    required pulumi.Output<String> groupId,
    pulumi.Output<bool>? requireAuthorizationForGroupCreation,
  }) :
      defaultManagementGroup = pulumi.Input.asOptionalInput<String>(defaultManagementGroup),
      groupId = pulumi.Input.asInput<String>(groupId),
      requireAuthorizationForGroupCreation = pulumi.Input.asOptionalInput<bool>(requireAuthorizationForGroupCreation);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultManagementGroup': ?defaultManagementGroup,
      'groupId': groupId,
      'requireAuthorizationForGroupCreation': ?requireAuthorizationForGroupCreation,
    };
  }

  factory HierarchySettingArgs.fromMap(Map<String, dynamic> map) {
    return HierarchySettingArgs(
      defaultManagementGroup: map['defaultManagementGroup'] == null ? null : pulumi.Output.create<String>(map['defaultManagementGroup'] as String),
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      requireAuthorizationForGroupCreation: map['requireAuthorizationForGroupCreation'] == null ? null : pulumi.Output.create<bool>(map['requireAuthorizationForGroupCreation'] as bool),
    );
  }
}

