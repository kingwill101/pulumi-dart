// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_eks_resource_scaling_config_scaling_resource_resource.dart';

class PlanWorkflowStepEksResourceScalingConfigScalingResource {
  /// Kubernetes namespace.
  final pulumi.Input<String> namespace;
  /// Set of resources to scale. See Resources below.
  final pulumi.Input<List<PlanWorkflowStepEksResourceScalingConfigScalingResourceResource>>? resources;

  /// Creates a new [PlanWorkflowStepEksResourceScalingConfigScalingResource].
  /// [namespace] Kubernetes namespace.
  /// [resources] Set of resources to scale. See Resources below.
  PlanWorkflowStepEksResourceScalingConfigScalingResource({
    required this.namespace,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': namespace,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepEksResourceScalingConfigScalingResourceResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<PlanWorkflowStepEksResourceScalingConfigScalingResourceResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepEksResourceScalingConfigScalingResource.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepEksResourceScalingConfigScalingResource(
      namespace: (map['namespace'] as String).input(),
      resources: map['resources'] == null ? null : (pulumi.Input.decodeList<PlanWorkflowStepEksResourceScalingConfigScalingResourceResource>(map['resources'], (value) => PlanWorkflowStepEksResourceScalingConfigScalingResourceResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

