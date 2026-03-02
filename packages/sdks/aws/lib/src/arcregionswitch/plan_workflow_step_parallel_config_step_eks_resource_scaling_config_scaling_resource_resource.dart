// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource {
  /// Name of the Horizontal Pod Autoscaler.
  final pulumi.Input<String>? hpaName;
  /// Name of the Kubernetes object.
  final pulumi.Input<String> name;
  /// Kubernetes namespace.
  final pulumi.Input<String> namespace;
  /// Name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource].
  /// [hpaName] Name of the Horizontal Pod Autoscaler.
  /// [name] Name of the Kubernetes object.
  /// [namespace] Kubernetes namespace.
  /// [resourceName] Name of the resource.
  PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource({
    this.hpaName,
    required this.name,
    required this.namespace,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hpaName': ?hpaName,
      'name': name,
      'namespace': namespace,
      'resourceName': resourceName,
    };
  }

  factory PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourceResource(
      hpaName: map['hpaName'] == null ? null : ((map['hpaName'] as String).input()).input(),
      name: (map['name'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

