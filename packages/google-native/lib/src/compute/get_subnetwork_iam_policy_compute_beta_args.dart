// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_subnetwork_iam_policy_compute_beta_args_doc}
/// Arguments for getSubnetworkIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_subnetwork_iam_policy_compute_beta_args_doc}
class GetSubnetworkIamPolicyComputeBetaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resource;

  /// Creates a new [GetSubnetworkIamPolicyComputeBetaArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [region] Required.
  /// [resource] Required.
  GetSubnetworkIamPolicyComputeBetaArgs({
    int? optionsRequestedPolicyVersion,
    String? project,
    required String region,
    required String resource,
  }) : optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       resource = pulumi.Input.asInput<String>(resource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'region': region,
      'resource': resource,
    };
  }

  factory GetSubnetworkIamPolicyComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSubnetworkIamPolicyComputeBetaArgs(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      resource: map['resource'] as String,
    );
  }
}
