// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccessPolicy.
class GetAccessPolicyAccesscontextmanagerV1betaArgs {
  final pulumi.Input<String> accessPolicyId;

  GetAccessPolicyAccesscontextmanagerV1betaArgs({
    required this.accessPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    return map;
  }

  factory GetAccessPolicyAccesscontextmanagerV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetAccessPolicyAccesscontextmanagerV1betaArgs(
      accessPolicyId: pulumi.Input.asInput<String>(map['accessPolicyId']),
    );
  }
}
