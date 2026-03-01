// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_eks_resource_scaling_config_scaling_resource_resource.dart';

class PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource {
  /// Kubernetes namespace.
  final String namespace;
  /// Set of resources to scale. See Resources below.
  final List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource>? resources;

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
      'resources': ?resources == null ? null : pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource, Map<String, dynamic>>(resources!, (value) => value.toMap()),
    };
  }

  factory PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResource(
      namespace: map['namespace'] as String,
      resources: map['resources'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource>(map['resources'], (value) => PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

