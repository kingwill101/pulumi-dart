// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupMembership resources.
class GroupMembershipState {
  /// The identifier for a group in the Identity Store.
  final pulumi.Input<String?>? groupId;
  /// Identity Store ID associated with the Single Sign-On Instance.
  final pulumi.Input<String?>? identityStoreId;
  /// The identifier for a user in the Identity Store.
  final pulumi.Input<String?>? memberId;
  /// The identifier of the newly created group membership in the Identity Store.
  final pulumi.Input<String?>? membershipId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GroupMembershipState].
  /// [groupId] The identifier for a group in the Identity Store.
  /// [identityStoreId] Identity Store ID associated with the Single Sign-On Instance.
  /// [memberId] The identifier for a user in the Identity Store.
  /// [membershipId] The identifier of the newly created group membership in the Identity Store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GroupMembershipState({
    this.groupId,
    this.identityStoreId,
    this.memberId,
    this.membershipId,
    this.region,
  });

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
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityStoreId: (() { final guardedValue = map['identityStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberId: (() { final guardedValue = map['memberId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      membershipId: (() { final guardedValue = map['membershipId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
