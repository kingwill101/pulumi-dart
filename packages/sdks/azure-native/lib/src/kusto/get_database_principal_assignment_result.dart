// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabasePrincipalAssignment.
class GetDatabasePrincipalAssignmentResult {
  /// The service principal object id in AAD (Azure active directory)
  final String aadObjectId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The principal ID assigned to the database principal. It can be a user email, application ID, or security group name.
  final String principalId;
  /// The principal name
  final String principalName;
  /// Principal type.
  final String principalType;
  /// The provisioned state of the resource.
  final String provisioningState;
  /// Database principal role.
  final String role;
  /// The tenant id of the principal
  final String? tenantId;
  /// The tenant name of the principal
  final String tenantName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDatabasePrincipalAssignmentResult].
  /// [aadObjectId] The service principal object id in AAD (Azure active directory)
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [principalId] The principal ID assigned to the database principal. It can be a user email, application ID, or security group name.
  /// [principalName] The principal name
  /// [principalType] Principal type.
  /// [provisioningState] The provisioned state of the resource.
  /// [role] Database principal role.
  /// [tenantId] The tenant id of the principal
  /// [tenantName] The tenant name of the principal
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDatabasePrincipalAssignmentResult({
    required this.aadObjectId,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.principalId,
    required this.principalName,
    required this.principalType,
    required this.provisioningState,
    required this.role,
    this.tenantId,
    required this.tenantName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadObjectId': aadObjectId,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'principalId': principalId,
      'principalName': principalName,
      'principalType': principalType,
      'provisioningState': provisioningState,
      'role': role,
      'tenantId': ?tenantId,
      'tenantName': tenantName,
      'type': type,
    };
  }

  factory GetDatabasePrincipalAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetDatabasePrincipalAssignmentResult(
      aadObjectId: map['aadObjectId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      principalId: map['principalId'] as String,
      principalName: map['principalName'] as String,
      principalType: map['principalType'] as String,
      provisioningState: map['provisioningState'] as String,
      role: map['role'] as String,
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantName: map['tenantName'] as String,
      type: map['type'] as String,
    );
  }
}

