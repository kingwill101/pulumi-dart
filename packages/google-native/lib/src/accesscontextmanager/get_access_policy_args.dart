// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_v1_get_access_policy_args_doc}
/// Arguments for getAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1_get_access_policy_args_doc}
class GetAccessPolicyArgs {
  final pulumi.Input<String> accessPolicyId;

  /// Creates a new [GetAccessPolicyArgs].
  /// [accessPolicyId] Required.
  GetAccessPolicyArgs({
    required String accessPolicyId,
  }) :
      accessPolicyId = pulumi.Input.asInput<String>(accessPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': accessPolicyId,
    };
  }

  factory GetAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyArgs(
      accessPolicyId: map['accessPolicyId'] as String,
    );
  }
}

