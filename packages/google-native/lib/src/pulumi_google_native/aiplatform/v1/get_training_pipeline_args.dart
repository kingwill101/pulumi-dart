// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTrainingPipeline.
class GetTrainingPipelineArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> trainingPipelineId;

  GetTrainingPipelineArgs({
    required this.location,
    this.project,
    required this.trainingPipelineId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['trainingPipelineId'] = trainingPipelineId;
    return map;
  }

  factory GetTrainingPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetTrainingPipelineArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      trainingPipelineId: Input.asInput<String>(map['trainingPipelineId']),
    );
  }
}
