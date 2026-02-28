// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_organization_environment_iam_policy_args_doc}
/// Arguments for getOrganizationEnvironmentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_organization_environment_iam_policy_args_doc}
class GetOrganizationEnvironmentIamPolicyArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationEnvironmentIamPolicyArgs].
  /// [environmentId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [organizationId] Required.
  GetOrganizationEnvironmentIamPolicyArgs({
    required String environmentId,
    int? optionsRequestedPolicyVersion,
    required String organizationId,
  })  : environmentId = pulumi.Input.asInput<String>(environmentId),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        organizationId = pulumi.Input.asInput<String>(organizationId);

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
      environmentId: map['environmentId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      organizationId: map['organizationId'] as String,
    );
  }
}
