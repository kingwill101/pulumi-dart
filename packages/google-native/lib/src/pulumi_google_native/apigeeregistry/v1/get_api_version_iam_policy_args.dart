// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getApiVersionIamPolicy.
class GetApiVersionIamPolicyArgs {
  final Input<String> apiId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> versionId;

  GetApiVersionIamPolicyArgs({
    required this.apiId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['versionId'] = versionId;
    return map;
  }

  factory GetApiVersionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiVersionIamPolicyArgs(
      apiId: Input.asInput<String>(map['apiId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      versionId: Input.asInput<String>(map['versionId']),
    );
  }
}
