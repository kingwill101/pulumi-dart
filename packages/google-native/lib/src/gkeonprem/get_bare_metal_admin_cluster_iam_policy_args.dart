// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_bare_metal_admin_cluster_iam_policy_args_doc}
/// Arguments for getBareMetalAdminClusterIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_bare_metal_admin_cluster_iam_policy_args_doc}
class GetBareMetalAdminClusterIamPolicyArgs {
  final pulumi.Input<String> bareMetalAdminClusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBareMetalAdminClusterIamPolicyArgs].
  /// [bareMetalAdminClusterId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetBareMetalAdminClusterIamPolicyArgs({
    required String bareMetalAdminClusterId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) :
      bareMetalAdminClusterId = pulumi.Input.asInput<String>(bareMetalAdminClusterId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalAdminClusterId': bareMetalAdminClusterId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetBareMetalAdminClusterIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalAdminClusterIamPolicyArgs(
      bareMetalAdminClusterId: map['bareMetalAdminClusterId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

