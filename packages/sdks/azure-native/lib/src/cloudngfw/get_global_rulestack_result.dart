// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_properties_response.dart';
import 'security_services_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGlobalRulestack.
class GetGlobalRulestackResult {
  /// subscription scope of global rulestack
  final List<String>? associatedSubscriptions;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Mode for default rules creation
  final String? defaultMode;
  /// rulestack description
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The managed service identities assigned to this resource.
  final ManagedIdentityPropertiesResponse? identity;
  /// Global Location
  final String? location;
  /// minimum version
  final String? minAppIdVersion;
  /// The name of the resource
  final String? name;
  /// PanEtag info
  final String? panEtag;
  /// Rulestack Location, Required for GlobalRulestacks, Not for LocalRulestacks
  final String? panLocation;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Rulestack Type
  final String? scope;
  /// Security Profile
  final SecurityServicesResponse? securityServices;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetGlobalRulestackResult({
    this.associatedSubscriptions,
    this.azureApiVersion,
    this.defaultMode,
    this.description,
    this.id,
    this.identity,
    this.location,
    this.minAppIdVersion,
    this.name,
    this.panEtag,
    this.panLocation,
    this.provisioningState,
    this.scope,
    this.securityServices,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedSubscriptions': ?associatedSubscriptions,
      'azureApiVersion': ?azureApiVersion,
      'defaultMode': ?defaultMode,
      'description': ?description,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'minAppIdVersion': ?minAppIdVersion,
      'name': ?name,
      'panEtag': ?panEtag,
      'panLocation': ?panLocation,
      'provisioningState': ?provisioningState,
      'scope': ?scope,
      'securityServices': ?securityServices?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetGlobalRulestackResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalRulestackResult(
      associatedSubscriptions: (() { final guardedValue = map['associatedSubscriptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultMode: (() { final guardedValue = map['defaultMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedIdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minAppIdVersion: (() { final guardedValue = map['minAppIdVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      panEtag: (() { final guardedValue = map['panEtag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      panLocation: (() { final guardedValue = map['panLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityServices: (() { final guardedValue = map['securityServices']; if (guardedValue == null) return null; return SecurityServicesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
