// ignore_for_file: unused_element, unnecessary_cast

import 'policy_properties_response.dart';
import 'principal_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRoleManagementPolicy.
class GetRoleManagementPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The role management policy description.
  final String? description;
  /// The role management policy display name.
  final String? displayName;
  /// The readonly computed rule applied to the policy.
  final List<dynamic>? effectiveRules;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The role management policy is default policy.
  final bool? isOrganizationDefault;
  /// The name of the entity last modified it
  final PrincipalResponse? lastModifiedBy;
  /// The last modified date time.
  final String? lastModifiedDateTime;
  /// The name of the resource
  final String? name;
  /// Additional properties of scope
  final PolicyPropertiesResponse? policyProperties;
  /// The rule applied to the policy.
  final List<dynamic>? rules;
  /// The role management policy scope.
  final String? scope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetRoleManagementPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The role management policy description.
  /// [displayName] The role management policy display name.
  /// [effectiveRules] The readonly computed rule applied to the policy.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isOrganizationDefault] The role management policy is default policy.
  /// [lastModifiedBy] The name of the entity last modified it
  /// [lastModifiedDateTime] The last modified date time.
  /// [name] The name of the resource
  /// [policyProperties] Additional properties of scope
  /// [rules] The rule applied to the policy.
  /// [scope] The role management policy scope.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetRoleManagementPolicyResult({
    this.azureApiVersion,
    this.description,
    this.displayName,
    this.effectiveRules,
    this.id,
    this.isOrganizationDefault,
    this.lastModifiedBy,
    this.lastModifiedDateTime,
    this.name,
    this.policyProperties,
    this.rules,
    this.scope,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveRules': ?effectiveRules,
      'id': ?id,
      'isOrganizationDefault': ?isOrganizationDefault,
      'lastModifiedBy': ?lastModifiedBy?.toMap(),
      'lastModifiedDateTime': ?lastModifiedDateTime,
      'name': ?name,
      'policyProperties': ?policyProperties?.toMap(),
      'rules': ?rules,
      'scope': ?scope,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetRoleManagementPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveRules: (() { final guardedValue = map['effectiveRules']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isOrganizationDefault: (() { final guardedValue = map['isOrganizationDefault']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModifiedBy: (() { final guardedValue = map['lastModifiedBy']; if (guardedValue == null) return null; return PrincipalResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastModifiedDateTime: (() { final guardedValue = map['lastModifiedDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyProperties: (() { final guardedValue = map['policyProperties']; if (guardedValue == null) return null; return PolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
