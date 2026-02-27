// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../plan_workflow_step_eks_resource_scaling_config_scaling_resource_resource/plan_workflow_step_eks_resource_scaling_config_scaling_resource_resource.dart';

class PlanWorkflowStepEksResourceScalingConfigScalingResource {
  /// Kubernetes namespace.
  final String namespace;

  /// Set of resources to scale. See Resources below.
  final List<PlanWorkflowStepEksResourceScalingConfigScalingResourceResource>?
      resources;

  PlanWorkflowStepEksResourceScalingConfigScalingResource({
    required this.namespace,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespace'] = namespace;
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = pulumi.Input.encodeList<
          PlanWorkflowStepEksResourceScalingConfigScalingResourceResource,
          Map<String, dynamic>>(resourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStepEksResourceScalingConfigScalingResource.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepEksResourceScalingConfigScalingResource(
      namespace: map['namespace'] as String,
      resources: map['resources'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepEksResourceScalingConfigScalingResourceResource>(
              map['resources'],
              (value) =>
                  PlanWorkflowStepEksResourceScalingConfigScalingResourceResource
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
