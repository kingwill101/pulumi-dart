// ignore_for_file: unused_element, unnecessary_cast

import 'azure_dev_ops_organization_profile_response.dart';
import 'managed_service_identity_response.dart';
import 'stateful_response.dart';
import 'system_data_response.dart';
import 'vmss_fabric_profile_response.dart';

/// Result data returned by getPool.
class GetPoolResult {
  /// Defines how the machine will be handled once it executed a job.
  final StatefulResponse agentProfile;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource id of the DevCenter Project the pool belongs to.
  final String devCenterProjectResourceId;
  /// Defines the type of fabric the agent will run on.
  final VmssFabricProfileResponse fabricProfile;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// Defines how many resources can there be created at any given time.
  final int maximumConcurrency;
  /// The name of the resource
  final String name;
  /// Defines the organization in which the pool will be used.
  final AzureDevOpsOrganizationProfileResponse organizationProfile;
  /// The status of the current operation.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
    required this.agentProfile,
    required this.azureApiVersion,
    required this.devCenterProjectResourceId,
    required this.fabricProfile,
    required this.id,
    this.identity,
    required this.location,
    required this.maximumConcurrency,
    required this.name,
    required this.organizationProfile,
    this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProfile': agentProfile.toMap(),
      'azureApiVersion': azureApiVersion,
      'devCenterProjectResourceId': devCenterProjectResourceId,
      'fabricProfile': fabricProfile.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'maximumConcurrency': maximumConcurrency,
      'name': name,
      'organizationProfile': organizationProfile.toMap(),
      'provisioningState': ?provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPoolResult.fromMap(Map<String, dynamic> map) {
    return GetPoolResult(
      agentProfile: StatefulResponse.fromMap((map['agentProfile']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      devCenterProjectResourceId: map['devCenterProjectResourceId'] as String,
      fabricProfile: VmssFabricProfileResponse.fromMap((map['fabricProfile']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      maximumConcurrency: map['maximumConcurrency'] as int,
      name: map['name'] as String,
      organizationProfile: AzureDevOpsOrganizationProfileResponse.fromMap((map['organizationProfile']! as Map).cast<String, dynamic>()),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

