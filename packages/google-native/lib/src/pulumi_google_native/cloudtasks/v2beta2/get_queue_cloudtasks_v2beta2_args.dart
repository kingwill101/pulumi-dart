// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getQueue.
class GetQueueCloudtasksV2beta2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queueId;
  final pulumi.Input<String>? readMask;

  GetQueueCloudtasksV2beta2Args({
    required this.location,
    this.project,
    required this.queueId,
    this.readMask,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['queueId'] = queueId;
    final readMaskValue = readMask;
    if (readMaskValue != null) {
      map['readMask'] = readMaskValue;
    }
    return map;
  }

  factory GetQueueCloudtasksV2beta2Args.fromMap(Map<String, dynamic> map) {
    return GetQueueCloudtasksV2beta2Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      queueId: pulumi.Input.asInput<String>(map['queueId']),
      readMask: pulumi.Input.asOptionalInput<String>(map['readMask']),
    );
  }
}
