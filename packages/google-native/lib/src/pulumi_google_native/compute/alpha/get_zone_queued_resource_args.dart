// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getZoneQueuedResource.
class GetZoneQueuedResourceArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queuedResource;
  final pulumi.Input<String> zone;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      queuedResource: pulumi.Input.asInput<String>(map['queuedResource']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
