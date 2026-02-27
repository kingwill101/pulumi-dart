// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHyperparameterTuningJob.
class GetHyperparameterTuningJobArgs {
  final pulumi.Input<String> hyperparameterTuningJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
          pulumi.Input.asInput<String>(map['hyperparameterTuningJobId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
