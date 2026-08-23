// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCommunicationService.
class GetCommunicationServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The location where the communication service stores its data at rest.
  final String dataLocation;
  /// FQDN of the CommunicationService instance.
  final String hostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// The immutable resource Id of the communication service.
  final String immutableResourceId;
  /// List of email Domain resource Ids.
  final List<String>? linkedDomains;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Resource ID of an Azure Notification Hub linked to this resource.
  final String notificationHubId;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Version of the CommunicationService resource. Probably you need the same or higher version of client SDKs.
  final String version;

  /// Creates a new [GetCommunicationServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataLocation] The location where the communication service stores its data at rest.
  /// [hostName] FQDN of the CommunicationService instance.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [immutableResourceId] The immutable resource Id of the communication service.
  /// [linkedDomains] List of email Domain resource Ids.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [notificationHubId] Resource ID of an Azure Notification Hub linked to this resource.
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of the CommunicationService resource. Probably you need the same or higher version of client SDKs.
  const GetCommunicationServiceResult({
    required this.azureApiVersion,
    required this.dataLocation,
    required this.hostName,
    required this.id,
    this.identity,
    required this.immutableResourceId,
    this.linkedDomains,
    required this.location,
    required this.name,
    required this.notificationHubId,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataLocation': dataLocation,
      'hostName': hostName,
      'id': id,
      'identity': ?identity?.toMap(),
      'immutableResourceId': immutableResourceId,
      'linkedDomains': ?linkedDomains,
      'location': location,
      'name': name,
      'notificationHubId': notificationHubId,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': version,
    };
  }

  factory GetCommunicationServiceResult.fromMap(Map<String, dynamic> map) {
    return GetCommunicationServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataLocation: map['dataLocation'] as String,
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      immutableResourceId: map['immutableResourceId'] as String,
      linkedDomains: (() { final guardedValue = map['linkedDomains']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      notificationHubId: map['notificationHubId'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}
