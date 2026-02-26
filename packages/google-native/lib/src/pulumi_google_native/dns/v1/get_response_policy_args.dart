// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getResponsePolicy.
class GetResponsePolicyArgs {
  final Input<String>? clientOperationId;
  final Input<String>? project;
  final Input<String> responsePolicy;

  GetResponsePolicyArgs({
    this.clientOperationId,
    this.project,
    required this.responsePolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['responsePolicy'] = responsePolicy;
    return map;
  }

  factory GetResponsePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyArgs(
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      project: Input.asOptionalInput<String>(map['project']),
      responsePolicy: Input.asInput<String>(map['responsePolicy']),
    );
  }
}
