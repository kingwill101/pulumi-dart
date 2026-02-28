// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_autoscaler_compute_beta_args_doc}
/// Arguments for getRegionAutoscaler.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_autoscaler_compute_beta_args_doc}
class GetRegionAutoscalerComputeBetaArgs {
  final pulumi.Input<String> autoscaler;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionAutoscalerComputeBetaArgs].
  /// [autoscaler] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionAutoscalerComputeBetaArgs({
    required String autoscaler,
    String? project,
    required String region,
  })  : autoscaler = pulumi.Input.asInput<String>(autoscaler),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscaler'] = autoscaler;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionAutoscalerComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionAutoscalerComputeBetaArgs(
      autoscaler: map['autoscaler'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
