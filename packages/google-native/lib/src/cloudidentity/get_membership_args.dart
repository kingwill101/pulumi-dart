// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1_get_membership_args_doc}
/// Arguments for getMembership.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1_get_membership_args_doc}
class GetMembershipArgs {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> membershipId;

  /// Creates a new [GetMembershipArgs].
  /// [groupId] Required.
  /// [membershipId] Required.
  GetMembershipArgs({
    required String groupId,
    required String membershipId,
  })  : groupId = pulumi.Input.asInput<String>(groupId),
        membershipId = pulumi.Input.asInput<String>(membershipId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['membershipId'] = membershipId;
    return map;
  }

  factory GetMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GetMembershipArgs(
      groupId: map['groupId'] as String,
      membershipId: map['membershipId'] as String,
    );
  }
}
