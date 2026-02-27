// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationEnvironmentIamPolicy.
class GetOrganizationEnvironmentIamPolicyArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> organizationId;

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
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
