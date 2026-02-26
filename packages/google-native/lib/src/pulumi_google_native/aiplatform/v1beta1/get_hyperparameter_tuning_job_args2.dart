// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHyperparameterTuningJob.
class GetHyperparameterTuningJobArgs2 {
  final Input<String> hyperparameterTuningJobId;
  final Input<String> location;
  final Input<String>? project;

  GetHyperparameterTuningJobArgs2({
    required this.hyperparameterTuningJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hyperparameterTuningJobId'] = hyperparameterTuningJobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetHyperparameterTuningJobArgs2.fromMap(Map<String, dynamic> map) {
    return GetHyperparameterTuningJobArgs2(
      hyperparameterTuningJobId:
          Input.asInput<String>(map['hyperparameterTuningJobId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
