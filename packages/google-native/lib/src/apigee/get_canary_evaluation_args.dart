// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_canary_evaluation_args_doc}
/// Arguments for getCanaryEvaluation.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_canary_evaluation_args_doc}
class GetCanaryEvaluationArgs {
  final pulumi.Input<String> canaryevaluationId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetCanaryEvaluationArgs].
  /// [canaryevaluationId] Required.
  /// [instanceId] Required.
  /// [organizationId] Required.
  GetCanaryEvaluationArgs({
    required String canaryevaluationId,
    required String instanceId,
    required String organizationId,
  })  : canaryevaluationId = pulumi.Input.asInput<String>(canaryevaluationId),
        instanceId = pulumi.Input.asInput<String>(instanceId),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canaryevaluationId'] = canaryevaluationId;
    map['instanceId'] = instanceId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetCanaryEvaluationArgs.fromMap(Map<String, dynamic> map) {
    return GetCanaryEvaluationArgs(
      canaryevaluationId: map['canaryevaluationId'] as String,
      instanceId: map['instanceId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
