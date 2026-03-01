// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_autoscaler_compute_beta_args_doc}
/// Arguments for getAutoscaler.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_autoscaler_compute_beta_args_doc}
class GetAutoscalerComputeBetaArgs {
  final pulumi.Input<String> autoscaler;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetAutoscalerComputeBetaArgs].
  /// [autoscaler] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetAutoscalerComputeBetaArgs({
    required String autoscaler,
    String? project,
    required String zone,
  }) : autoscaler = pulumi.Input.asInput<String>(autoscaler),
       project = pulumi.Input.asOptionalInput<String>(project),
       zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaler': autoscaler,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetAutoscalerComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoscalerComputeBetaArgs(
      autoscaler: map['autoscaler'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
