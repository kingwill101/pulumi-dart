// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionAutoscalingPolicyIamPolicy.
class GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> autoscalingPolicyId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  GetRegionAutoscalingPolicyIamPolicyDataprocV1beta2Args({
    required this.autoscalingPolicyId,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.regionId,
  });

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
      autoscalingPolicyId:
          pulumi.Input.asInput<String>(map['autoscalingPolicyId']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      regionId: pulumi.Input.asInput<String>(map['regionId']),
    );
  }
}
