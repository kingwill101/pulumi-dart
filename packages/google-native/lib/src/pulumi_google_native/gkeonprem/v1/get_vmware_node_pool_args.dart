// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVmwareNodePool.
class GetVmwareNodePoolArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> vmwareClusterId;
  final pulumi.Input<String> vmwareNodePoolId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
      vmwareClusterId: pulumi.Input.asInput<String>(map['vmwareClusterId']),
      vmwareNodePoolId: pulumi.Input.asInput<String>(map['vmwareNodePoolId']),
    );
  }
}
