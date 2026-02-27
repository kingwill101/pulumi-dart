// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRollout.
class GetRolloutArgs {
  final Input<String> deliveryPipelineId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> releaseId;
  final Input<String> rolloutId;

  GetRolloutArgs({
    required this.deliveryPipelineId,
    required this.location,
    this.project,
    required this.releaseId,
    required this.rolloutId,
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
    map['rolloutId'] = rolloutId;
    return map;
  }

  factory GetRolloutArgs.fromMap(Map<String, dynamic> map) {
    return GetRolloutArgs(
      deliveryPipelineId: Input.asInput<String>(map['deliveryPipelineId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      releaseId: Input.asInput<String>(map['releaseId']),
      rolloutId: Input.asInput<String>(map['rolloutId']),
    );
  }
}
