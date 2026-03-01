// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAzureADAdministrator.
class GetAzureADAdministratorResult {
  /// Type of the sever administrator.
  final String? administratorType;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The resource id of the identity used for AAD Authentication.
  final String? identityResourceId;
  /// Login name of the server administrator.
  final String? login;
  /// The name of the resource
  final String name;
  /// SID (object ID) of the server administrator.
  final String? sid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Tenant ID of the administrator.
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAzureADAdministratorResult].
  /// [administratorType] Type of the sever administrator.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identityResourceId] The resource id of the identity used for AAD Authentication.
  /// [login] Login name of the server administrator.
  /// [name] The name of the resource
  /// [sid] SID (object ID) of the server administrator.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] Tenant ID of the administrator.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAzureADAdministratorResult({
    this.administratorType,
    required this.azureApiVersion,
    required this.id,
    this.identityResourceId,
    this.login,
    required this.name,
    this.sid,
    required this.systemData,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorType': ?administratorType,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identityResourceId': ?identityResourceId,
      'login': ?login,
      'name': name,
      'sid': ?sid,
      'systemData': systemData.toMap(),
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory GetAzureADAdministratorResult.fromMap(Map<String, dynamic> map) {
    return GetAzureADAdministratorResult(
      administratorType: map['administratorType'] == null ? null : map['administratorType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identityResourceId: map['identityResourceId'] == null ? null : map['identityResourceId'] as String,
      login: map['login'] == null ? null : map['login'] as String,
      name: map['name'] as String,
      sid: map['sid'] == null ? null : map['sid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

