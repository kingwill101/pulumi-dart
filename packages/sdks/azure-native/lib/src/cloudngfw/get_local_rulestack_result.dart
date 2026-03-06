// ignore_for_file: unused_element, unnecessary_cast

import 'azure_resource_manager_managed_identity_properties_response.dart';
import 'security_services_response.dart';
import 'system_data_response.dart';

/// Result data returned by getLocalRulestack.
class GetLocalRulestackResult {
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
  /// The geo-location where the resource lives
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
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetLocalRulestackResult].
  /// [associatedSubscriptions] subscription scope of global rulestack
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultMode] Mode for default rules creation
  /// [description] rulestack description
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [minAppIdVersion] minimum version
  /// [name] The name of the resource
  /// [panEtag] PanEtag info
  /// [panLocation] Rulestack Location, Required for GlobalRulestacks, Not for LocalRulestacks
  /// [provisioningState] Provisioning state of the resource.
  /// [scope] Rulestack Type
  /// [securityServices] Security Profile
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetLocalRulestackResult({
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
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedSubscriptions': ?associatedSubscriptions,
      'azureApiVersion': azureApiVersion,
      'defaultMode': ?defaultMode,
      'description': ?description,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'minAppIdVersion': ?minAppIdVersion,
      'name': name,
      'panEtag': ?panEtag,
      'panLocation': ?panLocation,
      'provisioningState': provisioningState,
      'scope': ?scope,
      'securityServices': ?securityServices?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetLocalRulestackResult.fromMap(Map<String, dynamic> map) {
    return GetLocalRulestackResult(
      associatedSubscriptions: (() { final guardedValue = map['associatedSubscriptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      defaultMode: (() { final guardedValue = map['defaultMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return AzureResourceManagerManagedIdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      minAppIdVersion: (() { final guardedValue = map['minAppIdVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      panEtag: (() { final guardedValue = map['panEtag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      panLocation: (() { final guardedValue = map['panLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityServices: (() { final guardedValue = map['securityServices']; if (guardedValue == null) return null; return SecurityServicesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

