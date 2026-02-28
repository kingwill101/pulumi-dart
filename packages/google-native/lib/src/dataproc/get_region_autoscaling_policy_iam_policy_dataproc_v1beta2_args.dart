// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_region_autoscaling_policy_iam_policy_dataproc_v1beta2_args_doc}
/// Arguments for getRegionAutoscalingPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_region_autoscaling_policy_iam_policy_dataproc_v1beta2_args_doc}
class GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> autoscalingPolicyId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args].
  /// [autoscalingPolicyId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [regionId] Required.
  GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args({
    required String autoscalingPolicyId,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String regionId,
  })  : autoscalingPolicyId = pulumi.Input.asInput<String>(autoscalingPolicyId),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingPolicyId'] = autoscalingPolicyId;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    return map;
  }

  factory GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args(
      autoscalingPolicyId: map['autoscalingPolicyId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      regionId: map['regionId'] as String,
    );
  }
}
