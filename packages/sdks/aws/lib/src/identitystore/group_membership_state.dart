// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupMembership resources.
class GroupMembershipState {
  /// The identifier for a group in the Identity Store.
  final pulumi.Input<String>? groupId;
  /// Identity Store ID associated with the Single Sign-On Instance.
  final pulumi.Input<String>? identityStoreId;
  /// The identifier for a user in the Identity Store.
  final pulumi.Input<String>? memberId;
  /// The identifier of the newly created group membership in the Identity Store.
  final pulumi.Input<String>? membershipId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GroupMembershipState].
  /// [groupId] The identifier for a group in the Identity Store.
  /// [identityStoreId] Identity Store ID associated with the Single Sign-On Instance.
  /// [memberId] The identifier for a user in the Identity Store.
  /// [membershipId] The identifier of the newly created group membership in the Identity Store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GroupMembershipState({
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? identityStoreId,
    pulumi.Output<String>? memberId,
    pulumi.Output<String>? membershipId,
    pulumi.Output<String>? region,
  }) :
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      identityStoreId = pulumi.Input.asOptionalInput<String>(identityStoreId),
      memberId = pulumi.Input.asOptionalInput<String>(memberId),
      membershipId = pulumi.Input.asOptionalInput<String>(membershipId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'identityStoreId': ?identityStoreId,
      'memberId': ?memberId,
      'membershipId': ?membershipId,
      'region': ?region,
    };
  }

  factory GroupMembershipState.fromMap(Map<String, dynamic> map) {
    return GroupMembershipState(
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      identityStoreId: map['identityStoreId'] == null ? null : pulumi.Output.create<String>(map['identityStoreId'] as String),
      memberId: map['memberId'] == null ? null : pulumi.Output.create<String>(map['memberId'] as String),
      membershipId: map['membershipId'] == null ? null : pulumi.Output.create<String>(map['membershipId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

