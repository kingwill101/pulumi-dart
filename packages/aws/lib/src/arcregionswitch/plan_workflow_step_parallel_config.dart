// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step.dart';

class PlanWorkflowStepParallelConfig {
  /// List of steps to execute in parallel. Uses the same schema as Step but without `parallel_config` to prevent infinite nesting.
  final List<PlanWorkflowStepParallelConfigStep>? steps;

  /// Creates a new [PlanWorkflowStepParallelConfig].
  /// [steps] List of steps to execute in parallel. Uses the same schema as Step but without `parallel_config` to prevent infinite nesting.
  PlanWorkflowStepParallelConfig({
    this.steps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stepsValue = steps;
    if (stepsValue != null) {
      map['steps'] = pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStep,
          Map<String, dynamic>>(stepsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStepParallelConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfig(
      steps: map['steps'] == null
          ? null
          : pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStep>(
              map['steps'],
              (value) => PlanWorkflowStepParallelConfigStep.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
