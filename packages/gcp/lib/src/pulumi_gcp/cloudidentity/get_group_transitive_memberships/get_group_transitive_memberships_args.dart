// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGroupTransitiveMemberships.
class GetGroupTransitiveMembershipsArgs {
  /// The parent Group resource to search transitive memberships in. Must be of the form groups/{group_id}.
  final Input<String> group;

  GetGroupTransitiveMembershipsArgs({
    required this.group,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group;
    return map;
  }

  factory GetGroupTransitiveMembershipsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupTransitiveMembershipsArgs(
      group: Input.asInput<String>(map['group']),
    );
  }
}
