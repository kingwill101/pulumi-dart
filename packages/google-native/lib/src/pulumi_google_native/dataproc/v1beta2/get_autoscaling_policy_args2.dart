// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAutoscalingPolicy.
class GetAutoscalingPolicyArgs2 {
  final Input<String> autoscalingPolicyId;
  final Input<String> location;
  final Input<String>? project;

  GetAutoscalingPolicyArgs2({
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

  factory GetAutoscalingPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetAutoscalingPolicyArgs2(
      autoscalingPolicyId: Input.asInput<String>(map['autoscalingPolicyId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
