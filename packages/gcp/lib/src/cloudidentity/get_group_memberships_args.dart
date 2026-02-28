// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_get_group_memberships_get_group_memberships_args_doc}
/// Arguments for getGroupMemberships.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_get_group_memberships_get_group_memberships_args_doc}
class GetGroupMembershipsArgs {
  /// The parent Group resource under which to lookup the Membership names. Must be of the form groups/{group_id}.
  final pulumi.Input<String> group;

  /// Creates a new [GetGroupMembershipsArgs].
  /// [group] The parent Group resource under which to lookup the Membership names. Must be of the form groups/{group_id}.
  GetGroupMembershipsArgs({
    required String group,
  }) : group = pulumi.Input.asInput<String>(group);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group;
    return map;
  }

  factory GetGroupMembershipsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsArgs(
      group: map['group'] as String,
    );
  }
}
