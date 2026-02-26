// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getZoneQueuedResource.
class GetZoneQueuedResourceArgs {
  final Input<String>? project;
  final Input<String> queuedResource;
  final Input<String> zone;

  GetZoneQueuedResourceArgs({
    this.project,
    required this.queuedResource,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['queuedResource'] = queuedResource;
    map['zone'] = zone;
    return map;
  }

  factory GetZoneQueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneQueuedResourceArgs(
      project: Input.asOptionalInput<String>(map['project']),
      queuedResource: Input.asInput<String>(map['queuedResource']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
