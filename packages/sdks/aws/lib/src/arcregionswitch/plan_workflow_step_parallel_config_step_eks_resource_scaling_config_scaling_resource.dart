// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_eks_resource_scaling_config_scaling_resource_resource.dart';

class PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource {
  /// Kubernetes namespace.
  final pulumi.Input<String> namespace;
  /// Set of resources to scale. See Resources below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource>>? resources;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource].
  /// [namespace] Kubernetes namespace.
  /// [resources] Set of resources to scale. See Resources below.
  PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource({
    required this.namespace,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': namespace,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource(
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

