// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPipeline.
class GetPipelineArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> pipelineId;
  final pulumi.Input<String>? project;

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
      location: pulumi.Input.asInput<String>(map['location']),
      pipelineId: pulumi.Input.asInput<String>(map['pipelineId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
