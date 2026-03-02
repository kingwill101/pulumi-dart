// ignore_for_file: unused_element, unnecessary_cast

import 'azure_resource_manager_managed_identity_properties_response.dart';
import 'security_services_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGlobalRulestack.
class GetGlobalRulestackResult {
  /// subscription scope of global rulestack
  final List<String>? associatedSubscriptions;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Mode for default rules creation
  final String? defaultMode;
  /// rulestack description
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The managed service identities assigned to this resource.
  final AzureResourceManagerManagedIdentityPropertiesResponse? identity;
  /// Global Location
  final String location;
  /// minimum version
  final String? minAppIdVersion;
  /// The name of the resource
  final String name;
  /// PanEtag info
  final String? panEtag;
  /// Rulestack Location, Required for GlobalRulestacks, Not for LocalRulestacks
  final String? panLocation;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Rulestack Type
  final String? scope;
  /// Security Profile
  final SecurityServicesResponse? securityServices;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGlobalRulestackResult].
  /// [associatedSubscriptions] subscription scope of global rulestack
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultMode] Mode for default rules creation
  /// [description] rulestack description
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The managed service identities assigned to this resource.
  /// [location] Global Location
  /// [minAppIdVersion] minimum version
  /// [name] The name of the resource
  /// [panEtag] PanEtag info
  /// [panLocation] Rulestack Location, Required for GlobalRulestacks, Not for LocalRulestacks
  /// [provisioningState] Provisioning state of the resource.
  /// [scope] Rulestack Type
  /// [securityServices] Security Profile
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetGlobalRulestackResult({
    this.associatedSubscriptions,
    required this.azureApiVersion,
    this.defaultMode,
    this.description,
    required this.id,
    this.identity,
    required this.location,
    this.minAppIdVersion,
    required this.name,
    this.panEtag,
    this.panLocation,
    required this.provisioningState,
    this.scope,
    this.securityServices,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedSubscriptions': ?associatedSubscriptions,
      'azureApiVersion': azureApiVersion,
      'defaultMode': ?defaultMode,
      'description': ?description,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'minAppIdVersion': ?minAppIdVersion,
      'name': name,
      'panEtag': ?panEtag,
      'panLocation': ?panLocation,
      'provisioningState': provisioningState,
      'scope': ?scope,
      'securityServices': ?securityServices == null ? null : securityServices!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetGlobalRulestackResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalRulestackResult(
      associatedSubscriptions: map['associatedSubscriptions'] == null ? null : (map['associatedSubscriptions']! as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      defaultMode: map['defaultMode'] == null ? null : map['defaultMode']! as String,
      description: map['description'] == null ? null : map['description']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : AzureResourceManagerManagedIdentityPropertiesResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      minAppIdVersion: map['minAppIdVersion'] == null ? null : map['minAppIdVersion']! as String,
      name: map['name'] as String,
      panEtag: map['panEtag'] == null ? null : map['panEtag']! as String,
      panLocation: map['panLocation'] == null ? null : map['panLocation']! as String,
      provisioningState: map['provisioningState'] as String,
      scope: map['scope'] == null ? null : map['scope']! as String,
      securityServices: map['securityServices'] == null ? null : SecurityServicesResponse.fromMap((map['securityServices']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

