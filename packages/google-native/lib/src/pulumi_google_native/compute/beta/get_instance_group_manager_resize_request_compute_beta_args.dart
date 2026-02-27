// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceGroupManagerResizeRequest.
class GetInstanceGroupManagerResizeRequestComputeBetaArgs {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resizeRequest;
  final pulumi.Input<String> zone;

  GetInstanceGroupManagerResizeRequestComputeBetaArgs({
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

  factory GetInstanceGroupManagerResizeRequestComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceGroupManagerResizeRequestComputeBetaArgs(
      instanceGroupManager:
          pulumi.Input.asInput<String>(map['instanceGroupManager']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resizeRequest: pulumi.Input.asInput<String>(map['resizeRequest']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
