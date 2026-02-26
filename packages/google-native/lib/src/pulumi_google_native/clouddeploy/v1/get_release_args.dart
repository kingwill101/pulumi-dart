// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRelease.
class GetReleaseArgs {
  final Input<String> deliveryPipelineId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> releaseId;

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
      deliveryPipelineId: Input.asInput<String>(map['deliveryPipelineId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      releaseId: Input.asInput<String>(map['releaseId']),
    );
  }
}
