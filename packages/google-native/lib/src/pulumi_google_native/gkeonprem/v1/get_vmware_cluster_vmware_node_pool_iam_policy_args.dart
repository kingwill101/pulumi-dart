// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVmwareClusterVmwareNodePoolIamPolicy.
class GetVmwareClusterVmwareNodePoolIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> vmwareClusterId;
  final pulumi.Input<String> vmwareNodePoolId;

  GetVmwareClusterVmwareNodePoolIamPolicyArgs({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.vmwareClusterId,
    required this.vmwareNodePoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['vmwareClusterId'] = vmwareClusterId;
    map['vmwareNodePoolId'] = vmwareNodePoolId;
    return map;
  }

  factory GetVmwareClusterVmwareNodePoolIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetVmwareClusterVmwareNodePoolIamPolicyArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      vmwareClusterId: pulumi.Input.asInput<String>(map['vmwareClusterId']),
      vmwareNodePoolId: pulumi.Input.asInput<String>(map['vmwareNodePoolId']),
    );
  }
}
