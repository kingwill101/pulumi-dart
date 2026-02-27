// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAttestorIamPolicy.
class GetAttestorIamPolicyBinaryauthorizationV1beta1Args {
  final pulumi.Input<String> attestorId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  GetAttestorIamPolicyBinaryauthorizationV1beta1Args({
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

  factory GetAttestorIamPolicyBinaryauthorizationV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetAttestorIamPolicyBinaryauthorizationV1beta1Args(
      attestorId: pulumi.Input.asInput<String>(map['attestorId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
