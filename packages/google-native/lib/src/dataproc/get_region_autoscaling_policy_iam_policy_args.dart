// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_region_autoscaling_policy_iam_policy_args_doc}
/// Arguments for getRegionAutoscalingPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_region_autoscaling_policy_iam_policy_args_doc}
class GetRegionAutoscalingPolicyIamPolicyArgs {
  final pulumi.Input<String> autoscalingPolicyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionAutoscalingPolicyIamPolicyArgs].
  /// [autoscalingPolicyId] Required.
  /// [project] Optional.
  /// [regionId] Required.
  GetRegionAutoscalingPolicyIamPolicyArgs({
    required String autoscalingPolicyId,
    String? project,
    required String regionId,
  })  : autoscalingPolicyId = pulumi.Input.asInput<String>(autoscalingPolicyId),
        project = pulumi.Input.asOptionalInput<String>(project),
        regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingPolicyId'] = autoscalingPolicyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    return map;
  }

  factory GetRegionAutoscalingPolicyIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionAutoscalingPolicyIamPolicyArgs(
      autoscalingPolicyId: map['autoscalingPolicyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      regionId: map['regionId'] as String,
    );
  }
}
