// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRelease.
class GetReleaseArgs {
  final pulumi.Input<String> deliveryPipelineId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> releaseId;

  GetReleaseArgs({
    required this.deliveryPipelineId,
    required this.location,
    this.project,
    required this.releaseId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deliveryPipelineId'] = deliveryPipelineId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['releaseId'] = releaseId;
    return map;
  }

  factory GetReleaseArgs.fromMap(Map<String, dynamic> map) {
    return GetReleaseArgs(
      deliveryPipelineId:
          pulumi.Input.asInput<String>(map['deliveryPipelineId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      releaseId: pulumi.Input.asInput<String>(map['releaseId']),
    );
  }
}
