// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGroupMemberships.
class GetGroupMembershipsArgs {
  /// The parent Group resource under which to lookup the Membership names. Must be of the form groups/{group_id}.
  final pulumi.Input<String> group;

  GetGroupMembershipsArgs({
    required this.group,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group;
    return map;
  }

  factory GetGroupMembershipsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsArgs(
      group: pulumi.Input.asInput<String>(map['group']),
    );
  }
}
