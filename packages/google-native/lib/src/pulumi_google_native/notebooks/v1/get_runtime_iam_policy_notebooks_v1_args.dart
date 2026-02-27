// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRuntimeIamPolicy.
class GetRuntimeIamPolicyNotebooksV1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runtimeId;

  GetRuntimeIamPolicyNotebooksV1Args({
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

  factory GetRuntimeIamPolicyNotebooksV1Args.fromMap(Map<String, dynamic> map) {
    return GetRuntimeIamPolicyNotebooksV1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runtimeId: pulumi.Input.asInput<String>(map['runtimeId']),
    );
  }
}
