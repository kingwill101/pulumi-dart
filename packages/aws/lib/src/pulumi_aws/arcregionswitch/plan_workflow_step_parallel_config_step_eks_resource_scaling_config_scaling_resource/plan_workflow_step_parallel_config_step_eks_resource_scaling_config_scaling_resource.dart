// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plan_workflow_step_parallel_config_step_eks_resource_scaling_config_scaling_resource_resource/plan_workflow_step_parallel_config_step_eks_resource_scaling_config_scaling_resource_resource.dart';

class PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource {
  /// Kubernetes namespace.
  final String namespace;

  /// Set of resources to scale. See Resources below.
  final List<
          PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource>?
      resources;

  PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource({
    required this.namespace,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespace'] = namespace;
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = Input.encodeList<
          PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource,
          Map<String, dynamic>>(resourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource(
      namespace: map['namespace'] as String,
      resources: map['resources'] == null
          ? null
          : Input.decodeList<
                  PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource>(
              map['resources'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
