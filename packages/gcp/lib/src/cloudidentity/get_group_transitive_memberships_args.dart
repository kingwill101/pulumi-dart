// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_get_group_transitive_memberships_get_group_transitive_memberships_args_doc}
/// Arguments for getGroupTransitiveMemberships.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_get_group_transitive_memberships_get_group_transitive_memberships_args_doc}
class GetGroupTransitiveMembershipsArgs {
  /// The parent Group resource to search transitive memberships in. Must be of the form groups/{group_id}.
  final pulumi.Input<String> group;

  /// Creates a new [GetGroupTransitiveMembershipsArgs].
  /// [group] The parent Group resource to search transitive memberships in. Must be of the form groups/{group_id}.
  GetGroupTransitiveMembershipsArgs({
    required String group,
  }) :
      group = pulumi.Input.asInput<String>(group);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
    };
  }

  factory GetGroupTransitiveMembershipsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupTransitiveMembershipsArgs(
      group: map['group'] as String,
    );
  }
}

