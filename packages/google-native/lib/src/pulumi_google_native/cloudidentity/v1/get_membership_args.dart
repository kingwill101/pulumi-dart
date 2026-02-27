// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getMembership.
class GetMembershipArgs {
  final Input<String> groupId;
  final Input<String> membershipId;

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
      groupId: Input.asInput<String>(map['groupId']),
      membershipId: Input.asInput<String>(map['membershipId']),
    );
  }
}
