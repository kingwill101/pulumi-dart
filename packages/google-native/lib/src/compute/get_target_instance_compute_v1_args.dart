// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_target_instance_compute_v1_args_doc}
/// Arguments for getTargetInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_target_instance_compute_v1_args_doc}
class GetTargetInstanceComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetInstance;
  final pulumi.Input<String> zone;

  /// Creates a new [GetTargetInstanceComputeV1Args].
  /// [project] Optional.
  /// [targetInstance] Required.
  /// [zone] Required.
  GetTargetInstanceComputeV1Args({
    String? project,
    required String targetInstance,
    required String zone,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        targetInstance = pulumi.Input.asInput<String>(targetInstance),
        zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetInstance'] = targetInstance;
    map['zone'] = zone;
    return map;
  }

  factory GetTargetInstanceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetInstanceComputeV1Args(
      project: map['project'] == null ? null : map['project'] as String,
      targetInstance: map['targetInstance'] as String,
      zone: map['zone'] as String,
    );
  }
}
