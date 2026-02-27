// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getQueuedResource.
class GetQueuedResourceArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queuedResourceId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      queuedResourceId: pulumi.Input.asInput<String>(map['queuedResourceId']),
    );
  }
}
