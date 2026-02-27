// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTrainingPipeline.
class GetTrainingPipelineArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> trainingPipelineId;

  GetTrainingPipelineArgs2({
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

  factory GetTrainingPipelineArgs2.fromMap(Map<String, dynamic> map) {
    return GetTrainingPipelineArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      trainingPipelineId: Input.asInput<String>(map['trainingPipelineId']),
    );
  }
}
