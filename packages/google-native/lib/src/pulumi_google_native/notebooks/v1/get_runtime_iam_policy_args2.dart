// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRuntimeIamPolicy.
class GetRuntimeIamPolicyArgs2 {
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> runtimeId;

  GetRuntimeIamPolicyArgs2({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.runtimeId,
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
    map['runtimeId'] = runtimeId;
    return map;
  }

  factory GetRuntimeIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetRuntimeIamPolicyArgs2(
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      runtimeId: Input.asInput<String>(map['runtimeId']),
    );
  }
}
