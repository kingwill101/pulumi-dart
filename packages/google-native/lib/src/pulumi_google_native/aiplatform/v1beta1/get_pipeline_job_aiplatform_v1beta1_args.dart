// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPipelineJob.
class GetPipelineJobAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> pipelineJobId;
  final pulumi.Input<String>? project;

  GetPipelineJobAiplatformV1beta1Args({
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

  factory GetPipelineJobAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetPipelineJobAiplatformV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      pipelineJobId: pulumi.Input.asInput<String>(map['pipelineJobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
