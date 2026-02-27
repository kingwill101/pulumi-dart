// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecretIamPolicy.
class GetSecretIamPolicySecretmanagerV1beta1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> secretId;

  GetSecretIamPolicySecretmanagerV1beta1Args({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.secretId,
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
    map['secretId'] = secretId;
    return map;
  }

  factory GetSecretIamPolicySecretmanagerV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetSecretIamPolicySecretmanagerV1beta1Args(
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      secretId: pulumi.Input.asInput<String>(map['secretId']),
    );
  }
}
