// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GroupMembership.
class GroupMembershipIdentitystoreArgs {
  /// The identifier for a group in the Identity Store.
  final pulumi.Input<String> groupId;

  /// Identity Store ID associated with the Single Sign-On Instance.
  final pulumi.Input<String> identityStoreId;

  /// The identifier for a user in the Identity Store.
  final pulumi.Input<String> memberId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GroupMembershipIdentitystoreArgs({
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

  factory GroupMembershipIdentitystoreArgs.fromMap(Map<String, dynamic> map) {
    return GroupMembershipIdentitystoreArgs(
      groupId: pulumi.Input.asInput<String>(map['groupId']),
      identityStoreId: pulumi.Input.asInput<String>(map['identityStoreId']),
      memberId: pulumi.Input.asInput<String>(map['memberId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
