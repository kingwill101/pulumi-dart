// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plan_workflow_step_parallel_config_step/plan_workflow_step_parallel_config_step.dart';

class PlanWorkflowStepParallelConfig {
  /// List of steps to execute in parallel. Uses the same schema as Step but without <span pulumi-lang-nodejs="`parallelConfig`" pulumi-lang-dotnet="`ParallelConfig`" pulumi-lang-go="`parallelConfig`" pulumi-lang-python="`parallel_config`" pulumi-lang-yaml="`parallelConfig`" pulumi-lang-java="`parallelConfig`">`parallel_config`</span> to prevent infinite nesting.
  final List<PlanWorkflowStepParallelConfigStep>? steps;

  PlanWorkflowStepParallelConfig({
    this.steps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stepsValue = steps;
    if (stepsValue != null) {
      map['steps'] = Input.encodeList<PlanWorkflowStepParallelConfigStep,
          Map<String, dynamic>>(stepsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStepParallelConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfig(
      steps: map['steps'] == null
          ? null
          : Input.decodeList<PlanWorkflowStepParallelConfigStep>(
              map['steps'],
              (value) => PlanWorkflowStepParallelConfigStep.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
