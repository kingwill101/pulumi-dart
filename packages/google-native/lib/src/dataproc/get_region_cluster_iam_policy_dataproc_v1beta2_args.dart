// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_region_cluster_iam_policy_dataproc_v1beta2_args_doc}
/// Arguments for getRegionClusterIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_region_cluster_iam_policy_dataproc_v1beta2_args_doc}
class GetRegionClusterIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionClusterIamPolicyDataprocV1beta2Args].
  /// [clusterId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [regionId] Required.
  GetRegionClusterIamPolicyDataprocV1beta2Args({
    required String clusterId,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String regionId,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionClusterIamPolicyDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetRegionClusterIamPolicyDataprocV1beta2Args(
      clusterId: map['clusterId'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      regionId: map['regionId'] as String,
    );
  }
}

