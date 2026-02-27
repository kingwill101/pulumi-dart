// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAutoscalingPolicy.
class GetAutoscalingPolicyArgs {
  final Input<String> autoscalingPolicyId;
  final Input<String> location;
  final Input<String>? project;

  GetAutoscalingPolicyArgs({
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

  factory GetAutoscalingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoscalingPolicyArgs(
      autoscalingPolicyId: Input.asInput<String>(map['autoscalingPolicyId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
