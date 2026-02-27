// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCanaryEvaluation.
class GetCanaryEvaluationArgs {
  final pulumi.Input<String> canaryevaluationId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> organizationId;

  GetCanaryEvaluationArgs({
    required this.canaryevaluationId,
    required this.instanceId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canaryevaluationId'] = canaryevaluationId;
    map['instanceId'] = instanceId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetCanaryEvaluationArgs.fromMap(Map<String, dynamic> map) {
    return GetCanaryEvaluationArgs(
      canaryevaluationId:
          pulumi.Input.asInput<String>(map['canaryevaluationId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
