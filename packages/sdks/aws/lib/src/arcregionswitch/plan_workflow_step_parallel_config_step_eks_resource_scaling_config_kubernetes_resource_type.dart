// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType {
  /// Kubernetes API version.
  final pulumi.Input<String> apiVersion;
  /// Kubernetes resource kind.
  final pulumi.Input<String> kind;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType].
  /// [apiVersion] Kubernetes API version.
  /// [kind] Kubernetes resource kind.
  const PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType({
    required this.apiVersion,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'kind': kind,
    };
  }

  factory PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType(
      apiVersion: pulumi.Input.fromValue(map['apiVersion'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}
