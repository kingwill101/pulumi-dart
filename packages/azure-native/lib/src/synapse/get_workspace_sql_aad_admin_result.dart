// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspaceSqlAadAdmin.
class GetWorkspaceSqlAadAdminResult {
  /// Workspace active directory administrator type
  final String? administratorType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Login of the workspace active directory administrator
  final String? login;
  /// The name of the resource
  final String name;
  /// Object ID of the workspace active directory administrator
  final String? sid;
  /// Tenant ID of the workspace active directory administrator
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkspaceSqlAadAdminResult].
  /// [administratorType] Workspace active directory administrator type
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [login] Login of the workspace active directory administrator
  /// [name] The name of the resource
  /// [sid] Object ID of the workspace active directory administrator
  /// [tenantId] Tenant ID of the workspace active directory administrator
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWorkspaceSqlAadAdminResult({
    this.administratorType,
    required this.azureApiVersion,
    required this.id,
    this.login,
    required this.name,
    this.sid,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorType': ?administratorType,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'login': ?login,
      'name': name,
      'sid': ?sid,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory GetWorkspaceSqlAadAdminResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceSqlAadAdminResult(
      administratorType: map['administratorType'] == null ? null : map['administratorType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      login: map['login'] == null ? null : map['login'] as String,
      name: map['name'] as String,
      sid: map['sid'] == null ? null : map['sid'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

