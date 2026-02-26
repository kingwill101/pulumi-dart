// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTimeSeries.
class GetTimeSeriesArgs {
  final Input<String> experimentId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> runId;
  final Input<String> tensorboardId;
  final Input<String> timeSeriesId;

  GetTimeSeriesArgs({
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

  factory GetTimeSeriesArgs.fromMap(Map<String, dynamic> map) {
    return GetTimeSeriesArgs(
      experimentId: Input.asInput<String>(map['experimentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      runId: Input.asInput<String>(map['runId']),
      tensorboardId: Input.asInput<String>(map['tensorboardId']),
      timeSeriesId: Input.asInput<String>(map['timeSeriesId']),
    );
  }
}
