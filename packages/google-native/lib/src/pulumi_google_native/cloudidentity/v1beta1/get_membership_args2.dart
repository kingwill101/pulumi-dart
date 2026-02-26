// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMembership.
class GetMembershipArgs2 {
  final Input<String> groupId;
  final Input<String> membershipId;

  GetMembershipArgs2({
    required this.groupId,
    required this.membershipId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['membershipId'] = membershipId;
    return map;
  }

  factory GetMembershipArgs2.fromMap(Map<String, dynamic> map) {
    return GetMembershipArgs2(
      groupId: Input.asInput<String>(map['groupId']),
      membershipId: Input.asInput<String>(map['membershipId']),
    );
  }
}
