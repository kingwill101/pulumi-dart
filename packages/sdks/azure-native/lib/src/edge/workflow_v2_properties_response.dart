// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Workflow Properties
class WorkflowV2PropertiesResponse {
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;
  /// Workflow template Id
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [WorkflowV2PropertiesResponse].
  /// [provisioningState] Provisioning state of resource
  /// [workflowTemplateId] Workflow template Id
  const WorkflowV2PropertiesResponse({
    required this.provisioningState,
    required this.workflowTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'workflowTemplateId': workflowTemplateId,
    };
  }

  factory WorkflowV2PropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WorkflowV2PropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      workflowTemplateId: pulumi.Input.fromValue(map['workflowTemplateId'] as String),
    );
  }
}
