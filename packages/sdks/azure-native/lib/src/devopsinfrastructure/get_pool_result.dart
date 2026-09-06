// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'system_data_response.dart';
import 'vmss_fabric_profile_response.dart';

/// Result data returned by getPool.
class GetPoolResult {
  /// Defines how the machine will be handled once it executed a job.
  final dynamic agentProfile;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource id of the DevCenter Project the pool belongs to.
  final String? devCenterProjectResourceId;
  /// Defines the type of fabric the agent will run on.
  final VmssFabricProfileResponse? fabricProfile;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// Defines how many resources can there be created at any given time.
  final int? maximumConcurrency;
  /// The name of the resource
  final String? name;
  /// Defines the organization in which the pool will be used.
  final dynamic organizationProfile;
  /// The status of the current operation.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetPoolResult].
  /// [agentProfile] Defines how the machine will be handled once it executed a job.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [devCenterProjectResourceId] The resource id of the DevCenter Project the pool belongs to.
  /// [fabricProfile] Defines the type of fabric the agent will run on.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [maximumConcurrency] Defines how many resources can there be created at any given time.
  /// [name] The name of the resource
  /// [organizationProfile] Defines the organization in which the pool will be used.
  /// [provisioningState] The status of the current operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetPoolResult({
    this.agentProfile,
    this.azureApiVersion,
    this.devCenterProjectResourceId,
    this.fabricProfile,
    this.id,
    this.identity,
    this.location,
    this.maximumConcurrency,
    this.name,
    this.organizationProfile,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProfile': ?agentProfile,
      'azureApiVersion': ?azureApiVersion,
      'devCenterProjectResourceId': ?devCenterProjectResourceId,
      'fabricProfile': ?fabricProfile?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'maximumConcurrency': ?maximumConcurrency,
      'name': ?name,
      'organizationProfile': ?organizationProfile,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetPoolResult.fromMap(Map<String, dynamic> map) {
    return GetPoolResult(
      agentProfile: (() { final guardedValue = map['agentProfile']; if (guardedValue == null) return null; return guardedValue; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      devCenterProjectResourceId: (() { final guardedValue = map['devCenterProjectResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fabricProfile: (() { final guardedValue = map['fabricProfile']; if (guardedValue == null) return null; return VmssFabricProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maximumConcurrency: (() { final guardedValue = map['maximumConcurrency']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationProfile: (() { final guardedValue = map['organizationProfile']; if (guardedValue == null) return null; return guardedValue; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
