// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPolicy.
class GetPolicyArgs3 {
  final Input<String>? clientOperationId;
  final Input<String> policy;
  final Input<String>? project;

  GetPolicyArgs3({
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

  factory GetPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs3(
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      policy: Input.asInput<String>(map['policy']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
