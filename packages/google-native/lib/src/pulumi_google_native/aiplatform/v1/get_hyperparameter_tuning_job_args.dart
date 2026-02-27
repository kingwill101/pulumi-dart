// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getHyperparameterTuningJob.
class GetHyperparameterTuningJobArgs {
  final Input<String> hyperparameterTuningJobId;
  final Input<String> location;
  final Input<String>? project;

  GetHyperparameterTuningJobArgs({
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

  factory GetHyperparameterTuningJobArgs.fromMap(Map<String, dynamic> map) {
    return GetHyperparameterTuningJobArgs(
      hyperparameterTuningJobId:
          Input.asInput<String>(map['hyperparameterTuningJobId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
