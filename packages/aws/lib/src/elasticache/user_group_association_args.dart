// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticache_user_group_association_user_group_association_args_doc}
/// The set of arguments for UserGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_elasticache_user_group_association_user_group_association_args_doc}
class UserGroupAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the user group.
  final pulumi.Input<String> userGroupId;

  /// ID of the user to associated with the user group.
  final pulumi.Input<String> userId;

  /// Creates a new [UserGroupAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userGroupId] ID of the user group.
  /// [userId] ID of the user to associated with the user group.
  UserGroupAssociationArgs({
    String? region,
    required String userGroupId,
    required String userId,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        userGroupId = pulumi.Input.asInput<String>(userGroupId),
        userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userGroupId'] = userGroupId;
    map['userId'] = userId;
    return map;
  }

  factory UserGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupAssociationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      userGroupId: map['userGroupId'] as String,
      userId: map['userId'] as String,
    );
  }
}
