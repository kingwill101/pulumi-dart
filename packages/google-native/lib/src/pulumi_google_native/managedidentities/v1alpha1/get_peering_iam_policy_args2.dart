// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPeeringIamPolicy.
class GetPeeringIamPolicyArgs2 {
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String> peeringId;
  final Input<String>? project;

  GetPeeringIamPolicyArgs2({
    this.optionsRequestedPolicyVersion,
    required this.peeringId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['peeringId'] = peeringId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPeeringIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetPeeringIamPolicyArgs2(
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      peeringId: Input.asInput<String>(map['peeringId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
