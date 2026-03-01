// ignore_for_file: unused_element, unnecessary_cast


/// The preview of the operations for creation
class DryrunOperationPreviewResponse {
  /// The action defined by RBAC, refer https://docs.microsoft.com/azure/role-based-access-control/role-definitions#actions-format
  final String? action;
  /// The description of the operation
  final String? description;
  /// The operation name
  final String? name;
  /// The operation type
  final String? operationType;
  /// The scope of the operation, refer https://docs.microsoft.com/azure/role-based-access-control/scope-overview
  final String? scope;

  /// Creates a new [DryrunOperationPreviewResponse].
  /// [action] The action defined by RBAC, refer https://docs.microsoft.com/azure/role-based-access-control/role-definitions#actions-format
  /// [description] The description of the operation
  /// [name] The operation name
  /// [operationType] The operation type
  /// [scope] The scope of the operation, refer https://docs.microsoft.com/azure/role-based-access-control/scope-overview
  DryrunOperationPreviewResponse({
    this.action,
    this.description,
    this.name,
    this.operationType,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'name': ?name,
      'operationType': ?operationType,
      'scope': ?scope,
    };
  }

  factory DryrunOperationPreviewResponse.fromMap(Map<String, dynamic> map) {
    return DryrunOperationPreviewResponse(
      action: map['action'] == null ? null : map['action'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      operationType: map['operationType'] == null ? null : map['operationType'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}

