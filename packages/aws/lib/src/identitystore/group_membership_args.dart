// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identitystore_group_membership_group_membership_args_doc}
/// The set of arguments for GroupMembership.
/// {@endtemplate}
/// {@macro pulumi_identitystore_group_membership_group_membership_args_doc}
class GroupMembershipArgs {
  /// The identifier for a group in the Identity Store.
  final pulumi.Input<String> groupId;
  /// Identity Store ID associated with the Single Sign-On Instance.
  final pulumi.Input<String> identityStoreId;
  /// The identifier for a user in the Identity Store.
  final pulumi.Input<String> memberId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GroupMembershipArgs].
  /// [groupId] The identifier for a group in the Identity Store.
  /// [identityStoreId] Identity Store ID associated with the Single Sign-On Instance.
  /// [memberId] The identifier for a user in the Identity Store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GroupMembershipArgs({
    required String groupId,
    required String identityStoreId,
    required String memberId,
    String? region,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      identityStoreId = pulumi.Input.asInput<String>(identityStoreId),
      memberId = pulumi.Input.asInput<String>(memberId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'identityStoreId': identityStoreId,
      'memberId': memberId,
      'region': ?region,
    };
  }

  factory GroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GroupMembershipArgs(
      groupId: map['groupId'] as String,
      identityStoreId: map['identityStoreId'] as String,
      memberId: map['memberId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

