// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_get_policy_args_doc}
class GetPolicyArgs {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> policy;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyArgs].
  /// [clientOperationId] Optional.
  /// [policy] Required.
  /// [project] Optional.
  GetPolicyArgs({
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

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      clientOperationId: map['clientOperationId'] == null
          ? null
          : map['clientOperationId'] as String,
      policy: map['policy'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
