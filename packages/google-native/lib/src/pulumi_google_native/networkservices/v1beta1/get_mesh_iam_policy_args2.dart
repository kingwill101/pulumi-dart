// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMeshIamPolicy.
class GetMeshIamPolicyArgs2 {
  final Input<String> location;
  final Input<String> meshId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetMeshIamPolicyArgs2({
    required this.location,
    required this.meshId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['meshId'] = meshId;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMeshIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetMeshIamPolicyArgs2(
      location: Input.asInput<String>(map['location']),
      meshId: Input.asInput<String>(map['meshId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
