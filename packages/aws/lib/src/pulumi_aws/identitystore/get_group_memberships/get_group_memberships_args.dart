// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGroupMemberships.
class GetGroupMembershipsArgs {
  /// The identifier for a group in the Identity Store.
  final pulumi.Input<String> groupId;

  /// Identity Store ID associated with the Single Sign-On Instance.
  final pulumi.Input<String> identityStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetGroupMembershipsArgs({
    required this.groupId,
    required this.identityStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['identityStoreId'] = identityStoreId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetGroupMembershipsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsArgs(
      groupId: pulumi.Input.asInput<String>(map['groupId']),
      identityStoreId: pulumi.Input.asInput<String>(map['identityStoreId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
