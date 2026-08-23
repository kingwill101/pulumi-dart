// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSqlResourceSqlRoleAssignment.
class GetSqlResourceSqlRoleAssignmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The unique resource identifier of the database account.
  final String id;
  /// The name of the database account.
  final String name;
  /// The unique identifier for the associated AAD principal in the AAD graph to which access is being granted through this Role Assignment. Tenant ID for the principal is inferred using the tenant associated with the subscription.
  final String? principalId;
  /// The unique identifier for the associated Role Definition.
  final String? roleDefinitionId;
  /// The data plane resource path for which access is being granted through this Role Assignment.
  final String? scope;
  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetSqlResourceSqlRoleAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The unique resource identifier of the database account.
  /// [name] The name of the database account.
  /// [principalId] The unique identifier for the associated AAD principal in the AAD graph to which access is being granted through this Role Assignment. Tenant ID for the principal is inferred using the tenant associated with the subscription.
  /// [roleDefinitionId] The unique identifier for the associated Role Definition.
  /// [scope] The data plane resource path for which access is being granted through this Role Assignment.
  /// [type] The type of Azure resource.
  const GetSqlResourceSqlRoleAssignmentResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.principalId,
    this.roleDefinitionId,
    this.scope,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'principalId': ?principalId,
      'roleDefinitionId': ?roleDefinitionId,
      'scope': ?scope,
      'type': type,
    };
  }

  factory GetSqlResourceSqlRoleAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetSqlResourceSqlRoleAssignmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}
