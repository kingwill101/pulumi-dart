// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCanaryEvaluation.
class GetCanaryEvaluationArgs {
  final Input<String> canaryevaluationId;
  final Input<String> instanceId;
  final Input<String> organizationId;

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
      canaryevaluationId: Input.asInput<String>(map['canaryevaluationId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
