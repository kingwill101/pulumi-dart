// ignore_for_file: unused_element, unnecessary_cast


/// Workflow Properties
class WorkflowPropertiesResponse {
  /// Provisioning state of resource
  final String provisioningState;
  /// Workflow template Id
  final String workflowTemplateId;

  /// Creates a new [WorkflowPropertiesResponse].
  /// [provisioningState] Provisioning state of resource
  /// [workflowTemplateId] Workflow template Id
  WorkflowPropertiesResponse({
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
      provisioningState: map['provisioningState'] as String,
      workflowTemplateId: map['workflowTemplateId'] as String,
    );
  }
}

