// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_metric_args_doc}
/// Arguments for getMetric.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_metric_args_doc}
class GetMetricArgs {
  final pulumi.Input<String> metricId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMetricArgs].
  /// [metricId] Required.
  /// [project] Optional.
  GetMetricArgs({
    required String metricId,
    String? project,
  })  : metricId = pulumi.Input.asInput<String>(metricId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricId'] = metricId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMetricArgs.fromMap(Map<String, dynamic> map) {
    return GetMetricArgs(
      metricId: map['metricId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
