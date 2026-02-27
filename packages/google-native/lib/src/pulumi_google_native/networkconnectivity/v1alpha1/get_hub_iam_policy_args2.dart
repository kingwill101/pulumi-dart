// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getHubIamPolicy.
class GetHubIamPolicyArgs2 {
  final Input<String> hubId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetHubIamPolicyArgs2({
    required this.hubId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory GetHubIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetHubIamPolicyArgs2(
      hubId: Input.asInput<String>(map['hubId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
