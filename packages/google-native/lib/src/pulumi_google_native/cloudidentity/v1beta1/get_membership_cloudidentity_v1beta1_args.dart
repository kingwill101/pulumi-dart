// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMembership.
class GetMembershipCloudidentityV1beta1Args {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> membershipId;

  GetMembershipCloudidentityV1beta1Args({
    required this.groupId,
    required this.membershipId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['membershipId'] = membershipId;
    return map;
  }

  factory GetMembershipCloudidentityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetMembershipCloudidentityV1beta1Args(
      groupId: pulumi.Input.asInput<String>(map['groupId']),
      membershipId: pulumi.Input.asInput<String>(map['membershipId']),
    );
  }
}
