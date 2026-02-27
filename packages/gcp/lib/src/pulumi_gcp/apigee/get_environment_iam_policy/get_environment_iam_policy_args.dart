// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEnvironmentIamPolicy.
class GetEnvironmentIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> envId;

  /// The Apigee Organization associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}`.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> orgId;

  GetEnvironmentIamPolicyArgs({
    required this.envId,
    required this.orgId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['envId'] = envId;
    map['orgId'] = orgId;
    return map;
  }

  factory GetEnvironmentIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentIamPolicyArgs(
      envId: pulumi.Input.asInput<String>(map['envId']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
    );
  }
}
