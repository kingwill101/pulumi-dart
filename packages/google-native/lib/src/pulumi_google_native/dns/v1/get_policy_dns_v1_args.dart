// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPolicy.
class GetPolicyDnsV1Args {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> policy;
  final pulumi.Input<String>? project;

  GetPolicyDnsV1Args({
    this.clientOperationId,
    required this.policy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    map['policy'] = policy;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPolicyDnsV1Args.fromMap(Map<String, dynamic> map) {
    return GetPolicyDnsV1Args(
      clientOperationId:
          pulumi.Input.asOptionalInput<String>(map['clientOperationId']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
