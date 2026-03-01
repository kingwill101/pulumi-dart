// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_get_scope_iam_policy_gkehub_v1alpha_args_doc}
/// Arguments for getScopeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_get_scope_iam_policy_gkehub_v1alpha_args_doc}
class GetScopeIamPolicyGkehubV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetScopeIamPolicyGkehubV1alphaArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [scopeId] Required.
  GetScopeIamPolicyGkehubV1alphaArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String scopeId,
  }) : location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       scopeId = pulumi.Input.asInput<String>(scopeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'scopeId': scopeId,
    };
  }

  factory GetScopeIamPolicyGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeIamPolicyGkehubV1alphaArgs(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      scopeId: map['scopeId'] as String,
    );
  }
}
