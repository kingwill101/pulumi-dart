// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_bare_metal_cluster_bare_metal_node_pool_iam_policy_args_doc}
/// Arguments for getBareMetalClusterBareMetalNodePoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_bare_metal_cluster_bare_metal_node_pool_iam_policy_args_doc}
class GetBareMetalClusterBareMetalNodePoolIamPolicyArgs {
  final pulumi.Input<String> bareMetalClusterId;
  final pulumi.Input<String> bareMetalNodePoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBareMetalClusterBareMetalNodePoolIamPolicyArgs].
  /// [bareMetalClusterId] Required.
  /// [bareMetalNodePoolId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetBareMetalClusterBareMetalNodePoolIamPolicyArgs({
    required String bareMetalClusterId,
    required String bareMetalNodePoolId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : bareMetalClusterId = pulumi.Input.asInput<String>(bareMetalClusterId),
        bareMetalNodePoolId = pulumi.Input.asInput<String>(bareMetalNodePoolId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bareMetalClusterId'] = bareMetalClusterId;
    map['bareMetalNodePoolId'] = bareMetalNodePoolId;
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

  factory GetBareMetalClusterBareMetalNodePoolIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetBareMetalClusterBareMetalNodePoolIamPolicyArgs(
      bareMetalClusterId: map['bareMetalClusterId'] as String,
      bareMetalNodePoolId: map['bareMetalNodePoolId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
