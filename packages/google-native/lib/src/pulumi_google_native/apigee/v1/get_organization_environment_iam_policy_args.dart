// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationEnvironmentIamPolicy.
class GetOrganizationEnvironmentIamPolicyArgs {
  final Input<String> environmentId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String> organizationId;

  GetOrganizationEnvironmentIamPolicyArgs({
    required this.environmentId,
    this.optionsRequestedPolicyVersion,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationEnvironmentIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationEnvironmentIamPolicyArgs(
      environmentId: Input.asInput<String>(map['environmentId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
