// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInstanceIamPolicy.
class GetInstanceIamPolicyArgs4 {
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> resource;
  final Input<String> zone;

  GetInstanceIamPolicyArgs4({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.resource,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resource'] = resource;
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceIamPolicyArgs4.fromMap(Map<String, dynamic> map) {
    return GetInstanceIamPolicyArgs4(
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      resource: Input.asInput<String>(map['resource']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
