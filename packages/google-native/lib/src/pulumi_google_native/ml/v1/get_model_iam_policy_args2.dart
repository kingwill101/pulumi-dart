// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getModelIamPolicy.
class GetModelIamPolicyArgs2 {
  final Input<String> modelId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetModelIamPolicyArgs2({
    required this.modelId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelId'] = modelId;
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

  factory GetModelIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetModelIamPolicyArgs2(
      modelId: Input.asInput<String>(map['modelId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
