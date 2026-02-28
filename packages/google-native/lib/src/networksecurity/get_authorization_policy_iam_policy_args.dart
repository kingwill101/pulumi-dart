// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_authorization_policy_iam_policy_args_doc}
/// Arguments for getAuthorizationPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_authorization_policy_iam_policy_args_doc}
class GetAuthorizationPolicyIamPolicyArgs {
  final pulumi.Input<String> authorizationPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAuthorizationPolicyIamPolicyArgs].
  /// [authorizationPolicyId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAuthorizationPolicyIamPolicyArgs({
    required String authorizationPolicyId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : authorizationPolicyId =
            pulumi.Input.asInput<String>(authorizationPolicyId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationPolicyId'] = authorizationPolicyId;
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

  factory GetAuthorizationPolicyIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetAuthorizationPolicyIamPolicyArgs(
      authorizationPolicyId: map['authorizationPolicyId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
