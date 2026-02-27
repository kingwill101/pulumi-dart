// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRepoIamPolicy.
class GetRepoIamPolicyArgs {
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> repoId;

  GetRepoIamPolicyArgs({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.repoId,
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
    map['repoId'] = repoId;
    return map;
  }

  factory GetRepoIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRepoIamPolicyArgs(
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      repoId: Input.asInput<String>(map['repoId']),
    );
  }
}
