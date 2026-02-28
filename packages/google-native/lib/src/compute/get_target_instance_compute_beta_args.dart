// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_target_instance_compute_beta_args_doc}
/// Arguments for getTargetInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_target_instance_compute_beta_args_doc}
class GetTargetInstanceComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetInstance;
  final pulumi.Input<String> zone;

  /// Creates a new [GetTargetInstanceComputeBetaArgs].
  /// [project] Optional.
  /// [targetInstance] Required.
  /// [zone] Required.
  GetTargetInstanceComputeBetaArgs({
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

  factory GetTargetInstanceComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetInstanceComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      targetInstance: map['targetInstance'] as String,
      zone: map['zone'] as String,
    );
  }
}
