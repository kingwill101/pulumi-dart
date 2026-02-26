// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionAutoscalingPolicyIamPolicy.
class GetRegionAutoscalingPolicyIamPolicyArgs {
  final Input<String> autoscalingPolicyId;
  final Input<String>? project;
  final Input<String> regionId;

  GetRegionAutoscalingPolicyIamPolicyArgs({
    required this.autoscalingPolicyId,
    this.project,
    required this.regionId,
  });

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
      autoscalingPolicyId: Input.asInput<String>(map['autoscalingPolicyId']),
      project: Input.asOptionalInput<String>(map['project']),
      regionId: Input.asInput<String>(map['regionId']),
    );
  }
}
