// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSingleServerServerAdministrator.
class GetSingleServerServerAdministratorResult {
  /// The type of administrator.
  final String administratorType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The server administrator login account name.
  final String login;
  /// The name of the resource
  final String name;
  /// The server administrator Sid (Secure ID).
  final String sid;
  /// The server Active Directory Administrator tenant id.
  final String tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSingleServerServerAdministratorResult].
  /// [administratorType] The type of administrator.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [login] The server administrator login account name.
  /// [name] The name of the resource
  /// [sid] The server administrator Sid (Secure ID).
  /// [tenantId] The server Active Directory Administrator tenant id.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSingleServerServerAdministratorResult({
    required this.administratorType,
    required this.azureApiVersion,
    required this.id,
    required this.login,
    required this.name,
    required this.sid,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorType': administratorType,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'login': login,
      'name': name,
      'sid': sid,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetSingleServerServerAdministratorResult.fromMap(Map<String, dynamic> map) {
    return GetSingleServerServerAdministratorResult(
      administratorType: map['administratorType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      login: map['login'] as String,
      name: map['name'] as String,
      sid: map['sid'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

