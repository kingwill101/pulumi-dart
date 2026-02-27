// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getVmwareNodePool.
class GetVmwareNodePoolArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;
  final Input<String> vmwareClusterId;
  final Input<String> vmwareNodePoolId;

  GetVmwareNodePoolArgs({
    required this.location,
    this.project,
    this.view,
    required this.vmwareClusterId,
    required this.vmwareNodePoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    map['vmwareClusterId'] = vmwareClusterId;
    map['vmwareNodePoolId'] = vmwareNodePoolId;
    return map;
  }

  factory GetVmwareNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareNodePoolArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
      vmwareClusterId: Input.asInput<String>(map['vmwareClusterId']),
      vmwareNodePoolId: Input.asInput<String>(map['vmwareNodePoolId']),
    );
  }
}
