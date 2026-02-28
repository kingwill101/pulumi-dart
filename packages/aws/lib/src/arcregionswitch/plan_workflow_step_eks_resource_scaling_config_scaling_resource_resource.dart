// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepEksResourceScalingConfigScalingResourceResource {
  /// Name of the Horizontal Pod Autoscaler.
  final String? hpaName;

  /// Name of the Kubernetes object.
  final String name;

  /// Kubernetes namespace.
  final String namespace;

  /// Name of the resource.
  final String resourceName;

  /// Creates a new [PlanWorkflowStepEksResourceScalingConfigScalingResourceResource].
  /// [hpaName] Name of the Horizontal Pod Autoscaler.
  /// [name] Name of the Kubernetes object.
  /// [namespace] Kubernetes namespace.
  /// [resourceName] Name of the resource.
  PlanWorkflowStepEksResourceScalingConfigScalingResourceResource({
    this.hpaName,
    required this.name,
    required this.namespace,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hpaNameValue = hpaName;
    if (hpaNameValue != null) {
      map['hpaName'] = hpaNameValue;
    }
    map['name'] = name;
    map['namespace'] = namespace;
    map['resourceName'] = resourceName;
    return map;
  }

  factory PlanWorkflowStepEksResourceScalingConfigScalingResourceResource.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepEksResourceScalingConfigScalingResourceResource(
      hpaName: map['hpaName'] == null ? null : map['hpaName'] as String,
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}
