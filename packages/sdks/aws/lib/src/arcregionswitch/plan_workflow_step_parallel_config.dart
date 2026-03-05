// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step.dart';

class PlanWorkflowStepParallelConfig {
  /// List of steps to execute in parallel. Uses the same schema as Step but without `parallel_config` to prevent infinite nesting.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStep>>? steps;

  /// Creates a new [PlanWorkflowStepParallelConfig].
  /// [steps] List of steps to execute in parallel. Uses the same schema as Step but without `parallel_config` to prevent infinite nesting.
  PlanWorkflowStepParallelConfig({
    this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'steps': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStep, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepParallelConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfig(
      steps: (() { final guardedValue = map['steps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStep>(guardedValue, (value) => PlanWorkflowStepParallelConfigStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

