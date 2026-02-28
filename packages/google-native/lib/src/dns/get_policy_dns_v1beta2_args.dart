// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1beta2_get_policy_dns_v1beta2_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_get_policy_dns_v1beta2_args_doc}
class GetPolicyDnsV1beta2Args {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> policy;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyDnsV1beta2Args].
  /// [clientOperationId] Optional.
  /// [policy] Required.
  /// [project] Optional.
  GetPolicyDnsV1beta2Args({
    String? clientOperationId,
    required String policy,
    String? project,
  })  : clientOperationId =
            pulumi.Input.asOptionalInput<String>(clientOperationId),
        policy = pulumi.Input.asInput<String>(policy),
        project = pulumi.Input.asOptionalInput<String>(project);

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

  factory GetPolicyDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetPolicyDnsV1beta2Args(
      clientOperationId: map['clientOperationId'] == null
          ? null
          : map['clientOperationId'] as String,
      policy: map['policy'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
