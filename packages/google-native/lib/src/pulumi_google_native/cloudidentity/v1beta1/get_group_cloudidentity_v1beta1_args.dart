// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGroup.
class GetGroupCloudidentityV1beta1Args {
  final pulumi.Input<String> groupId;

  GetGroupCloudidentityV1beta1Args({
    required this.groupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    return map;
  }

  factory GetGroupCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetGroupCloudidentityV1beta1Args(
      groupId: pulumi.Input.asInput<String>(map['groupId']),
    );
  }
}
