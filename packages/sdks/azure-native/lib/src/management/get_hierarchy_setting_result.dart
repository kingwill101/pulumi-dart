// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getHierarchySetting.
class GetHierarchySettingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Settings that sets the default Management Group under which new subscriptions get added in this tenant. For example, /providers/Microsoft.Management/managementGroups/defaultGroup
  final String? defaultManagementGroup;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Indicates whether RBAC access is required upon group creation under the root Management Group. If set to true, user will require Microsoft.Management/managementGroups/write action on the root Management Group scope in order to create new Groups directly under the root. This will prevent new users from creating new Management Groups, unless they are given access.
  final bool? requireAuthorizationForGroupCreation;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The AAD Tenant ID associated with the hierarchy settings. For example, 00000000-0000-0000-0000-000000000000
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetHierarchySettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultManagementGroup] Settings that sets the default Management Group under which new subscriptions get added in this tenant. For example, /providers/Microsoft.Management/managementGroups/defaultGroup
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [requireAuthorizationForGroupCreation] Indicates whether RBAC access is required upon group creation under the root Management Group. If set to true, user will require Microsoft.Management/managementGroups/write action on the root Management Group scope in order to create new Groups directly under the root. This will prevent new users from creating new Management Groups, unless they are given access.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The AAD Tenant ID associated with the hierarchy settings. For example, 00000000-0000-0000-0000-000000000000
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetHierarchySettingResult({
    required this.azureApiVersion,
    this.defaultManagementGroup,
    required this.id,
    required this.name,
    this.requireAuthorizationForGroupCreation,
    required this.systemData,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'defaultManagementGroup': ?defaultManagementGroup,
      'id': id,
      'name': name,
      'requireAuthorizationForGroupCreation': ?requireAuthorizationForGroupCreation,
      'systemData': systemData.toMap(),
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory GetHierarchySettingResult.fromMap(Map<String, dynamic> map) {
    return GetHierarchySettingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      defaultManagementGroup: map['defaultManagementGroup'] == null ? null : map['defaultManagementGroup']! as String,
      id: map['id'] as String,
      name: map['name'] as String,
      requireAuthorizationForGroupCreation: map['requireAuthorizationForGroupCreation'] == null ? null : map['requireAuthorizationForGroupCreation']! as bool,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] == null ? null : map['tenantId']! as String,
      type: map['type'] as String,
    );
  }
}

