// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionAutoscalingPolicyIamPolicy.
class GetRegionAutoscalingPolicyIamPolicyArgs {
  final pulumi.Input<String> autoscalingPolicyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

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
      autoscalingPolicyId:
          pulumi.Input.asInput<String>(map['autoscalingPolicyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      regionId: pulumi.Input.asInput<String>(map['regionId']),
    );
  }
}
