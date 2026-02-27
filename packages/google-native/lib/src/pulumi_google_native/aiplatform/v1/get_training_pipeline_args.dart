// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTrainingPipeline.
class GetTrainingPipelineArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> trainingPipelineId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      trainingPipelineId:
          pulumi.Input.asInput<String>(map['trainingPipelineId']),
    );
  }
}
