// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAutomation.
class GetAutomationArgs {
  final Input<String> automationId;
  final Input<String> deliveryPipelineId;
  final Input<String> location;
  final Input<String>? project;

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
      automationId: Input.asInput<String>(map['automationId']),
      deliveryPipelineId: Input.asInput<String>(map['deliveryPipelineId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
