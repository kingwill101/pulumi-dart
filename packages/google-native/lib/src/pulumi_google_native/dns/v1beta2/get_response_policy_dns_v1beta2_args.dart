// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResponsePolicy.
class GetResponsePolicyDnsV1beta2Args {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> responsePolicy;

  GetResponsePolicyDnsV1beta2Args({
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

  factory GetResponsePolicyDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyDnsV1beta2Args(
      clientOperationId:
          pulumi.Input.asOptionalInput<String>(map['clientOperationId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      responsePolicy: pulumi.Input.asInput<String>(map['responsePolicy']),
    );
  }
}
