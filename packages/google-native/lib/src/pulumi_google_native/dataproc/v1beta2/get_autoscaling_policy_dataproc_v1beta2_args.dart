// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAutoscalingPolicy.
class GetAutoscalingPolicyDataprocV1beta2Args {
  final pulumi.Input<String> autoscalingPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetAutoscalingPolicyDataprocV1beta2Args({
    required this.autoscalingPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingPolicyId'] = autoscalingPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAutoscalingPolicyDataprocV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return GetAutoscalingPolicyDataprocV1beta2Args(
      autoscalingPolicyId:
          pulumi.Input.asInput<String>(map['autoscalingPolicyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
