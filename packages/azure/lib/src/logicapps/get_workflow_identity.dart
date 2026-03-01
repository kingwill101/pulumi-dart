// ignore_for_file: unused_element, unnecessary_cast


class GetWorkflowIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Logic App Workflow.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Logic App Workflow.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Logic App Workflow.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Logic App Workflow.
  final String type;

  /// Creates a new [GetWorkflowIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Logic App Workflow.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Logic App Workflow.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Logic App Workflow.
  /// [type] The type of Managed Service Identity that is configured on this Logic App Workflow.
  GetWorkflowIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetWorkflowIdentity.fromMap(Map<String, dynamic> map) {
    return GetWorkflowIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

