// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPipeline.
class GetPipelineArgs {
  final Input<String> location;
  final Input<String> pipelineId;
  final Input<String>? project;

  GetPipelineArgs({
    required this.location,
    required this.pipelineId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['pipelineId'] = pipelineId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineArgs(
      location: Input.asInput<String>(map['location']),
      pipelineId: Input.asInput<String>(map['pipelineId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
