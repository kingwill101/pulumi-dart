// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTimeSeries.
class GetTimeSeriesAiplatformV1beta1Args {
  final pulumi.Input<String> experimentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runId;
  final pulumi.Input<String> tensorboardId;
  final pulumi.Input<String> timeSeriesId;

  GetTimeSeriesAiplatformV1beta1Args({
    required this.experimentId,
    required this.location,
    this.project,
    required this.runId,
    required this.tensorboardId,
    required this.timeSeriesId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['experimentId'] = experimentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['runId'] = runId;
    map['tensorboardId'] = tensorboardId;
    map['timeSeriesId'] = timeSeriesId;
    return map;
  }

  factory GetTimeSeriesAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTimeSeriesAiplatformV1beta1Args(
      experimentId: pulumi.Input.asInput<String>(map['experimentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runId: pulumi.Input.asInput<String>(map['runId']),
      tensorboardId: pulumi.Input.asInput<String>(map['tensorboardId']),
      timeSeriesId: pulumi.Input.asInput<String>(map['timeSeriesId']),
    );
  }
}
