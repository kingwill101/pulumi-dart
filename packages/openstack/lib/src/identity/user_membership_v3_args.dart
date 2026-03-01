// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_user_membership_v3_user_membership_v3_args_doc}
/// The set of arguments for UserMembershipV3.
/// {@endtemplate}
/// {@macro pulumi_identity_user_membership_v3_user_membership_v3_args_doc}
class UserMembershipV3Args {
  /// The UUID of group to which the user will be added.
  /// Changing this creates a new user membership.
  final pulumi.Input<String> groupId;
  /// The region in which to obtain the V3 Identity client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new user membership.
  final pulumi.Input<String>? region;
  /// The UUID of user to use. Changing this creates a new user membership.
  final pulumi.Input<String> userId;

  /// Creates a new [UserMembershipV3Args].
  /// [groupId] The UUID of group to which the user will be added.
  /// [region] The region in which to obtain the V3 Identity client.
  /// [userId] The UUID of user to use. Changing this creates a new user membership.
  UserMembershipV3Args({
    required String groupId,
    String? region,
    required String userId,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      region = pulumi.Input.asOptionalInput<String>(region),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'region': ?region,
      'userId': userId,
    };
  }

  factory UserMembershipV3Args.fromMap(Map<String, dynamic> map) {
    return UserMembershipV3Args(
      groupId: map['groupId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      userId: map['userId'] as String,
    );
  }
}

