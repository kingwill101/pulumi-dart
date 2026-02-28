// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1beta2_get_response_policy_dns_v1beta2_args_doc}
/// Arguments for getResponsePolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_get_response_policy_dns_v1beta2_args_doc}
class GetResponsePolicyDnsV1beta2Args {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> responsePolicy;

  /// Creates a new [GetResponsePolicyDnsV1beta2Args].
  /// [clientOperationId] Optional.
  /// [project] Optional.
  /// [responsePolicy] Required.
  GetResponsePolicyDnsV1beta2Args({
    String? clientOperationId,
    String? project,
    required String responsePolicy,
  })  : clientOperationId =
            pulumi.Input.asOptionalInput<String>(clientOperationId),
        project = pulumi.Input.asOptionalInput<String>(project),
        responsePolicy = pulumi.Input.asInput<String>(responsePolicy);

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
      clientOperationId: map['clientOperationId'] == null
          ? null
          : map['clientOperationId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      responsePolicy: map['responsePolicy'] as String,
    );
  }
}
