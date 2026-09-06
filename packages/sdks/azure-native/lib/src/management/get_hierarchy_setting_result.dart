// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getHierarchySetting.
class GetHierarchySettingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Settings that sets the default Management Group under which new subscriptions get added in this tenant. For example, /providers/Microsoft.Management/managementGroups/defaultGroup
  final String? defaultManagementGroup;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Indicates whether RBAC access is required upon group creation under the root Management Group. If set to true, user will require Microsoft.Management/managementGroups/write action on the root Management Group scope in order to create new Groups directly under the root. This will prevent new users from creating new Management Groups, unless they are given access.
  final bool? requireAuthorizationForGroupCreation;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The AAD Tenant ID associated with the hierarchy settings. For example, 00000000-0000-0000-0000-000000000000
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetHierarchySettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultManagementGroup] Settings that sets the default Management Group under which new subscriptions get added in this tenant. For example, /providers/Microsoft.Management/managementGroups/defaultGroup
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [requireAuthorizationForGroupCreation] Indicates whether RBAC access is required upon group creation under the root Management Group. If set to true, user will require Microsoft.Management/managementGroups/write action on the root Management Group scope in order to create new Groups directly under the root. This will prevent new users from creating new Management Groups, unless they are given access.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The AAD Tenant ID associated with the hierarchy settings. For example, 00000000-0000-0000-0000-000000000000
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetHierarchySettingResult({
    this.azureApiVersion,
    this.defaultManagementGroup,
    this.id,
    this.name,
    this.requireAuthorizationForGroupCreation,
    this.systemData,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'defaultManagementGroup': ?defaultManagementGroup,
      'id': ?id,
      'name': ?name,
      'requireAuthorizationForGroupCreation': ?requireAuthorizationForGroupCreation,
      'systemData': ?systemData?.toMap(),
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetHierarchySettingResult.fromMap(Map<String, dynamic> map) {
    return GetHierarchySettingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultManagementGroup: (() { final guardedValue = map['defaultManagementGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requireAuthorizationForGroupCreation: (() { final guardedValue = map['requireAuthorizationForGroupCreation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
