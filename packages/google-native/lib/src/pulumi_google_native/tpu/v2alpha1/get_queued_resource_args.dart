// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getQueuedResource.
class GetQueuedResourceArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> queuedResourceId;

  GetQueuedResourceArgs({
    required this.location,
    this.project,
    required this.queuedResourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['queuedResourceId'] = queuedResourceId;
    return map;
  }

  factory GetQueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetQueuedResourceArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      queuedResourceId: Input.asInput<String>(map['queuedResourceId']),
    );
  }
}
