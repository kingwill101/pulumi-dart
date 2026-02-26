// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHubGroupIamPolicy.
class GetHubGroupIamPolicyArgs {
  final Input<String> groupId;
  final Input<String> hubId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetHubGroupIamPolicyArgs({
    required this.groupId,
    required this.hubId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['hubId'] = hubId;
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

  factory GetHubGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetHubGroupIamPolicyArgs(
      groupId: Input.asInput<String>(map['groupId']),
      hubId: Input.asInput<String>(map['hubId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
