// ignore_for_file: unused_element, unnecessary_cast


class PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType {
  /// Kubernetes API version.
  final String apiVersion;
  /// Kubernetes resource kind.
  final String kind;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType].
  /// [apiVersion] Kubernetes API version.
  /// [kind] Kubernetes resource kind.
  PlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType({
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
      apiVersion: map['apiVersion'] as String,
      kind: map['kind'] as String,
    );
  }
}

