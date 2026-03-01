// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1_get_response_policy_args_doc}
/// Arguments for getResponsePolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_get_response_policy_args_doc}
class GetResponsePolicyArgs {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> responsePolicy;

  /// Creates a new [GetResponsePolicyArgs].
  /// [clientOperationId] Optional.
  /// [project] Optional.
  /// [responsePolicy] Required.
  GetResponsePolicyArgs({
    String? clientOperationId,
    String? project,
    required String responsePolicy,
  }) : clientOperationId = pulumi.Input.asOptionalInput<String>(
         clientOperationId,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       responsePolicy = pulumi.Input.asInput<String>(responsePolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'project': ?project,
      'responsePolicy': responsePolicy,
    };
  }

  factory GetResponsePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyArgs(
      clientOperationId: map['clientOperationId'] == null
          ? null
          : map['clientOperationId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      responsePolicy: map['responsePolicy'] as String,
    );
  }
}
