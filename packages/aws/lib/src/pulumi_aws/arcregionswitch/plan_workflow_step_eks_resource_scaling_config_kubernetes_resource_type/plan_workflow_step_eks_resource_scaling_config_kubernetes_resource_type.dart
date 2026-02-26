// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType {
  /// Kubernetes API version.
  final String apiVersion;

  /// Kubernetes resource kind.
  final String kind;

  PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType({
    required this.apiVersion,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiVersion'] = apiVersion;
    map['kind'] = kind;
    return map;
  }

  factory PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepEksResourceScalingConfigKubernetesResourceType(
      apiVersion: map['apiVersion'] as String,
      kind: map['kind'] as String,
    );
  }
}
