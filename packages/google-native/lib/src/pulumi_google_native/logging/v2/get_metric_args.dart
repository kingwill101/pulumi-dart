// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMetric.
class GetMetricArgs {
  final pulumi.Input<String> metricId;
  final pulumi.Input<String>? project;

  GetMetricArgs({
    required this.metricId,
    this.project,
  });

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
      metricId: pulumi.Input.asInput<String>(map['metricId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
