// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getExperiment.
class GetExperimentArgs2 {
  final Input<String> experimentId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> tensorboardId;

  GetExperimentArgs2({
    required this.experimentId,
    required this.location,
    this.project,
    required this.tensorboardId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['experimentId'] = experimentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tensorboardId'] = tensorboardId;
    return map;
  }

  factory GetExperimentArgs2.fromMap(Map<String, dynamic> map) {
    return GetExperimentArgs2(
      experimentId: Input.asInput<String>(map['experimentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      tensorboardId: Input.asInput<String>(map['tensorboardId']),
    );
  }
}
