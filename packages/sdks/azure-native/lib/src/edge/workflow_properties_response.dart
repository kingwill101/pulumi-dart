// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Workflow Properties
class WorkflowPropertiesResponse {
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;
  /// Workflow template Id
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [WorkflowPropertiesResponse].
  /// [provisioningState] Provisioning state of resource
  /// [workflowTemplateId] Workflow template Id
  const WorkflowPropertiesResponse({
    required this.provisioningState,
    required this.workflowTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'workflowTemplateId': workflowTemplateId,
    };
  }

  factory WorkflowPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WorkflowPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      workflowTemplateId: pulumi.Input.fromValue(map['workflowTemplateId'] as String),
    );
  }
}

