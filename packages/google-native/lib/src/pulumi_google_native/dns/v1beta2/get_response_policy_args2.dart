// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getResponsePolicy.
class GetResponsePolicyArgs2 {
  final Input<String>? clientOperationId;
  final Input<String>? project;
  final Input<String> responsePolicy;

  GetResponsePolicyArgs2({
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

  factory GetResponsePolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyArgs2(
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      project: Input.asOptionalInput<String>(map['project']),
      responsePolicy: Input.asInput<String>(map['responsePolicy']),
    );
  }
}
