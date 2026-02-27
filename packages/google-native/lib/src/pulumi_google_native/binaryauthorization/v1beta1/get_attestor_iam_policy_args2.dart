// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAttestorIamPolicy.
class GetAttestorIamPolicyArgs2 {
  final Input<String> attestorId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetAttestorIamPolicyArgs2({
    required this.attestorId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attestorId'] = attestorId;
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

  factory GetAttestorIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetAttestorIamPolicyArgs2(
      attestorId: Input.asInput<String>(map['attestorId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
