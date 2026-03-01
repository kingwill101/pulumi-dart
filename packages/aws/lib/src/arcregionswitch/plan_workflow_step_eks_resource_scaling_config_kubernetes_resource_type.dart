// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType {
  /// Kubernetes API version.
  final String apiVersion;

  /// Kubernetes resource kind.
  final String kind;

  /// Creates a new [PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType].
  /// [apiVersion] Kubernetes API version.
  /// [kind] Kubernetes resource kind.
  PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType({
    required this.apiVersion,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiVersion': apiVersion, 'kind': kind};
  }

  factory PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType(
      apiVersion: map['apiVersion'] as String,
      kind: map['kind'] as String,
    );
  }
}
