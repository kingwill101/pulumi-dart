// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPipelineJob.
class GetPipelineJobArgs2 {
  final Input<String> location;
  final Input<String> pipelineJobId;
  final Input<String>? project;

  GetPipelineJobArgs2({
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

  factory GetPipelineJobArgs2.fromMap(Map<String, dynamic> map) {
    return GetPipelineJobArgs2(
      location: Input.asInput<String>(map['location']),
      pipelineJobId: Input.asInput<String>(map['pipelineJobId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
