// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInstance.
class GetInstanceArgs2 {
  final Input<String> clusterId;
  final Input<String> instanceId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;

  GetInstanceArgs2({
    required this.clusterId,
    required this.instanceId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['instanceId'] = instanceId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetInstanceArgs2.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs2(
      clusterId: Input.asInput<String>(map['clusterId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
