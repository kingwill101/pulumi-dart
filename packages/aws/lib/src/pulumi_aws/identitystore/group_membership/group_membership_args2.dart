// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GroupMembership.
class GroupMembershipArgs2 {
  /// The identifier for a group in the Identity Store.
  final Input<String> groupId;

  /// Identity Store ID associated with the Single Sign-On Instance.
  final Input<String> identityStoreId;

  /// The identifier for a user in the Identity Store.
  final Input<String> memberId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GroupMembershipArgs2({
    required this.groupId,
    required this.identityStoreId,
    required this.memberId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['identityStoreId'] = identityStoreId;
    map['memberId'] = memberId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GroupMembershipArgs2.fromMap(Map<String, dynamic> map) {
    return GroupMembershipArgs2(
      groupId: Input.asInput<String>(map['groupId']),
      identityStoreId: Input.asInput<String>(map['identityStoreId']),
      memberId: Input.asInput<String>(map['memberId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
