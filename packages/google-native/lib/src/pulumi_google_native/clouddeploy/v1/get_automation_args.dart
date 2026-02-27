// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAutomation.
class GetAutomationArgs {
  final pulumi.Input<String> automationId;
  final pulumi.Input<String> deliveryPipelineId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetAutomationArgs({
    required this.automationId,
    required this.deliveryPipelineId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automationId'] = automationId;
    map['deliveryPipelineId'] = deliveryPipelineId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAutomationArgs.fromMap(Map<String, dynamic> map) {
    return GetAutomationArgs(
      automationId: pulumi.Input.asInput<String>(map['automationId']),
      deliveryPipelineId:
          pulumi.Input.asInput<String>(map['deliveryPipelineId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
