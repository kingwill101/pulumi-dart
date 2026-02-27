// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getApiDeploymentIamPolicy.
class GetApiDeploymentIamPolicyArgs {
  final Input<String> apiId;
  final Input<String> deploymentId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetApiDeploymentIamPolicyArgs({
    required this.apiId,
    required this.deploymentId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['deploymentId'] = deploymentId;
    map['location'] = location;
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

  factory GetApiDeploymentIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiDeploymentIamPolicyArgs(
      apiId: Input.asInput<String>(map['apiId']),
      deploymentId: Input.asInput<String>(map['deploymentId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
