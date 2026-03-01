// ignore_for_file: unused_element, unnecessary_cast


class GetWorkspaceIdentity {
  /// A list of User Assigned Identity IDs assigned to this Machine Learning Workspace.
  final List<String> identityIds;
  /// The Principal ID of the System Assigned Managed Identity assigned to this Machine Learning Workspace.
  final String principalId;
  /// The Tenant ID of the System Assigned Managed Identity assigned to this Machine Learning Workspace.
  final String tenantId;
  /// The Type of Managed Identity assigned to this Machine Learning Workspace.
  final String type;

  /// Creates a new [GetWorkspaceIdentity].
  /// [identityIds] A list of User Assigned Identity IDs assigned to this Machine Learning Workspace.
  /// [principalId] The Principal ID of the System Assigned Managed Identity assigned to this Machine Learning Workspace.
  /// [tenantId] The Tenant ID of the System Assigned Managed Identity assigned to this Machine Learning Workspace.
  /// [type] The Type of Managed Identity assigned to this Machine Learning Workspace.
  GetWorkspaceIdentity({
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

  factory GetWorkspaceIdentity.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

