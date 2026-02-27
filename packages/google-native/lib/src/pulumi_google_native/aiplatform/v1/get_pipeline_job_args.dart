// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPipelineJob.
class GetPipelineJobArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> pipelineJobId;
  final pulumi.Input<String>? project;

  GetPipelineJobArgs({
    required this.location,
    required this.pipelineJobId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['pipelineJobId'] = pipelineJobId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPipelineJobArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineJobArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      pipelineJobId: pulumi.Input.asInput<String>(map['pipelineJobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
