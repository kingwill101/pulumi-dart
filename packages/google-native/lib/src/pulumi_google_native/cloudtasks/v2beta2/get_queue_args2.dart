// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getQueue.
class GetQueueArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> queueId;
  final Input<String>? readMask;

  GetQueueArgs2({
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

  factory GetQueueArgs2.fromMap(Map<String, dynamic> map) {
    return GetQueueArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      queueId: Input.asInput<String>(map['queueId']),
      readMask: Input.asOptionalInput<String>(map['readMask']),
    );
  }
}
