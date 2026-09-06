// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCommunicationService.
class GetCommunicationServiceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The location where the communication service stores its data at rest.
  final String? dataLocation;
  /// Disable local authentication for the CommunicationService.
  final bool? disableLocalAuth;
  /// FQDN of the CommunicationService instance.
  final String? hostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The immutable resource Id of the communication service.
  final String? immutableResourceId;
  /// List of email Domain resource Ids.
  final List<String>? linkedDomains;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Resource ID of an Azure Notification Hub linked to this resource.
  final String? notificationHubId;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Allow, disallow, or let network security perimeter configuration control public network access to the protected resource. Value is optional but if passed in, it must be 'Enabled', 'Disabled' or 'SecuredByPerimeter'.
  final String? publicNetworkAccess;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Version of the CommunicationService resource. Probably you need the same or higher version of client SDKs.
  final String? version;

  /// Creates a new [GetCommunicationServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataLocation] The location where the communication service stores its data at rest.
  /// [disableLocalAuth] Disable local authentication for the CommunicationService.
  /// [hostName] FQDN of the CommunicationService instance.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [immutableResourceId] The immutable resource Id of the communication service.
  /// [linkedDomains] List of email Domain resource Ids.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [notificationHubId] Resource ID of an Azure Notification Hub linked to this resource.
  /// [provisioningState] Provisioning state of the resource.
  /// [publicNetworkAccess] Allow, disallow, or let network security perimeter configuration control public network access to the protected resource. Value is optional but if passed in, it must be 'Enabled', 'Disabled' or 'SecuredByPerimeter'.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of the CommunicationService resource. Probably you need the same or higher version of client SDKs.
  const GetCommunicationServiceResult({
    this.azureApiVersion,
    this.dataLocation,
    this.disableLocalAuth,
    this.hostName,
    this.id,
    this.identity,
    this.immutableResourceId,
    this.linkedDomains,
    this.location,
    this.name,
    this.notificationHubId,
    this.provisioningState,
    this.publicNetworkAccess,
    this.systemData,
    this.tags,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataLocation': ?dataLocation,
      'disableLocalAuth': ?disableLocalAuth,
      'hostName': ?hostName,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'immutableResourceId': ?immutableResourceId,
      'linkedDomains': ?linkedDomains,
      'location': ?location,
      'name': ?name,
      'notificationHubId': ?notificationHubId,
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetCommunicationServiceResult.fromMap(Map<String, dynamic> map) {
    return GetCommunicationServiceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataLocation: (() { final guardedValue = map['dataLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      immutableResourceId: (() { final guardedValue = map['immutableResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedDomains: (() { final guardedValue = map['linkedDomains']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationHubId: (() { final guardedValue = map['notificationHubId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
