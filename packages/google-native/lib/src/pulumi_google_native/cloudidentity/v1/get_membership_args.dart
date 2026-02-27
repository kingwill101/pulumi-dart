// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMembership.
class GetMembershipArgs {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> membershipId;

  GetMembershipArgs({
    required this.groupId,
    required this.membershipId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['membershipId'] = membershipId;
    return map;
  }

  factory GetMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GetMembershipArgs(
      groupId: pulumi.Input.asInput<String>(map['groupId']),
      membershipId: pulumi.Input.asInput<String>(map['membershipId']),
    );
  }
}
