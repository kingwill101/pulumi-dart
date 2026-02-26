// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getConfigIamPolicy.
class GetConfigIamPolicyArgs {
  final Input<String> configId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetConfigIamPolicyArgs({
    required this.configId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
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

  factory GetConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigIamPolicyArgs(
      configId: Input.asInput<String>(map['configId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
