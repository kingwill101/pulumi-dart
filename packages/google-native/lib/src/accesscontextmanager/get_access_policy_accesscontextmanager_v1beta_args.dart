// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_v1beta_get_access_policy_accesscontextmanager_v1beta_args_doc}
/// Arguments for getAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1beta_get_access_policy_accesscontextmanager_v1beta_args_doc}
class GetAccessPolicyAccesscontextmanagerV1betaArgs {
  final pulumi.Input<String> accessPolicyId;

  /// Creates a new [GetAccessPolicyAccesscontextmanagerV1betaArgs].
  /// [accessPolicyId] Required.
  GetAccessPolicyAccesscontextmanagerV1betaArgs({
    required String accessPolicyId,
  }) : accessPolicyId = pulumi.Input.asInput<String>(accessPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accessPolicyId': accessPolicyId};
  }

  factory GetAccessPolicyAccesscontextmanagerV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAccessPolicyAccesscontextmanagerV1betaArgs(
      accessPolicyId: map['accessPolicyId'] as String,
    );
  }
}
