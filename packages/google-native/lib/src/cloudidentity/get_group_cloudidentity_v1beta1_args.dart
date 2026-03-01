// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1beta1_get_group_cloudidentity_v1beta1_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1beta1_get_group_cloudidentity_v1beta1_args_doc}
class GetGroupCloudidentityV1beta1Args {
  final pulumi.Input<String> groupId;

  /// Creates a new [GetGroupCloudidentityV1beta1Args].
  /// [groupId] Required.
  GetGroupCloudidentityV1beta1Args({required String groupId})
    : groupId = pulumi.Input.asInput<String>(groupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'groupId': groupId};
  }

  factory GetGroupCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetGroupCloudidentityV1beta1Args(groupId: map['groupId'] as String);
  }
}
