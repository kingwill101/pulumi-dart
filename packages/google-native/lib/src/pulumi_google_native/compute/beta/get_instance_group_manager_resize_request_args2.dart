// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceGroupManagerResizeRequest.
class GetInstanceGroupManagerResizeRequestArgs2 {
  final Input<String> instanceGroupManager;
  final Input<String>? project;
  final Input<String> resizeRequest;
  final Input<String> zone;

  GetInstanceGroupManagerResizeRequestArgs2({
    required this.instanceGroupManager,
    this.project,
    required this.resizeRequest,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceGroupManager'] = instanceGroupManager;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resizeRequest'] = resizeRequest;
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceGroupManagerResizeRequestArgs2.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceGroupManagerResizeRequestArgs2(
      instanceGroupManager: Input.asInput<String>(map['instanceGroupManager']),
      project: Input.asOptionalInput<String>(map['project']),
      resizeRequest: Input.asInput<String>(map['resizeRequest']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
