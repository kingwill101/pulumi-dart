// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getVmwareClusterVmwareNodePoolIamPolicy.
class GetVmwareClusterVmwareNodePoolIamPolicyArgs {
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> vmwareClusterId;
  final Input<String> vmwareNodePoolId;

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
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      vmwareClusterId: Input.asInput<String>(map['vmwareClusterId']),
      vmwareNodePoolId: Input.asInput<String>(map['vmwareNodePoolId']),
    );
  }
}
