// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_backend_service_iam_policy_compute_beta_args_doc}
/// Arguments for getBackendServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_backend_service_iam_policy_compute_beta_args_doc}
class GetBackendServiceIamPolicyComputeBetaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;

  /// Creates a new [GetBackendServiceIamPolicyComputeBetaArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  GetBackendServiceIamPolicyComputeBetaArgs({
    int? optionsRequestedPolicyVersion,
    String? project,
    required String resource,
  }) : optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       resource = pulumi.Input.asInput<String>(resource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'resource': resource,
    };
  }

  factory GetBackendServiceIamPolicyComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBackendServiceIamPolicyComputeBetaArgs(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      resource: map['resource'] as String,
    );
  }
}
