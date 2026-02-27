// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getWorkstationClusterWorkstationConfigIamPolicy.
class GetWorkstationClusterWorkstationConfigIamPolicyArgs2 {
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> workstationClusterId;
  final Input<String> workstationConfigId;

  GetWorkstationClusterWorkstationConfigIamPolicyArgs2({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.workstationClusterId,
    required this.workstationConfigId,
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
    map['workstationClusterId'] = workstationClusterId;
    map['workstationConfigId'] = workstationConfigId;
    return map;
  }

  factory GetWorkstationClusterWorkstationConfigIamPolicyArgs2.fromMap(
      Map<String, dynamic> map) {
    return GetWorkstationClusterWorkstationConfigIamPolicyArgs2(
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      workstationClusterId: Input.asInput<String>(map['workstationClusterId']),
      workstationConfigId: Input.asInput<String>(map['workstationConfigId']),
    );
  }
}
