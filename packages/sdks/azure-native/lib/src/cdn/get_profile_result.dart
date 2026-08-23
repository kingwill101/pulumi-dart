// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'profile_log_scrubbing_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getProfile.
class GetProfileResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Key-Value pair representing additional properties for profiles.
  final Map<String, String> extendedProperties;
  /// The Id of the frontdoor.
  final String frontDoorId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// Kind of the profile. Used by portal to differentiate traditional CDN profile and new AFD profile.
  final String kind;
  /// The geo-location where the resource lives
  final String location;
  /// Defines rules that scrub sensitive fields in the Azure Front Door profile logs.
  final ProfileLogScrubbingResponse? logScrubbing;
  /// The name of the resource
  final String name;
  /// Send and receive timeout on forwarding request to the origin. When timeout is reached, the request fails and returns.
  final int? originResponseTimeoutSeconds;
  /// Provisioning status of the profile.
  final String provisioningState;
  /// Resource status of the profile.
  final String resourceState;
  /// The pricing tier (defines Azure Front Door Standard or Premium or a CDN provider, feature list and rate) of the profile.
  final SkuResponse sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetProfileResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedProperties] Key-Value pair representing additional properties for profiles.
  /// [frontDoorId] The Id of the frontdoor.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [kind] Kind of the profile. Used by portal to differentiate traditional CDN profile and new AFD profile.
  /// [location] The geo-location where the resource lives
  /// [logScrubbing] Defines rules that scrub sensitive fields in the Azure Front Door profile logs.
  /// [name] The name of the resource
  /// [originResponseTimeoutSeconds] Send and receive timeout on forwarding request to the origin. When timeout is reached, the request fails and returns.
  /// [provisioningState] Provisioning status of the profile.
  /// [resourceState] Resource status of the profile.
  /// [sku] The pricing tier (defines Azure Front Door Standard or Premium or a CDN provider, feature list and rate) of the profile.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetProfileResult({
    required this.azureApiVersion,
    required this.extendedProperties,
    required this.frontDoorId,
    required this.id,
    this.identity,
    required this.kind,
    required this.location,
    this.logScrubbing,
    required this.name,
    this.originResponseTimeoutSeconds,
    required this.provisioningState,
    required this.resourceState,
    required this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'extendedProperties': extendedProperties,
      'frontDoorId': frontDoorId,
      'id': id,
      'identity': ?identity?.toMap(),
      'kind': kind,
      'location': location,
      'logScrubbing': ?logScrubbing?.toMap(),
      'name': name,
      'originResponseTimeoutSeconds': ?originResponseTimeoutSeconds,
      'provisioningState': provisioningState,
      'resourceState': resourceState,
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetProfileResult.fromMap(Map<String, dynamic> map) {
    return GetProfileResult(
      azureApiVersion: map['azureApiVersion'] as String,
      extendedProperties: (map['extendedProperties'] as Map).cast<String, String>(),
      frontDoorId: map['frontDoorId'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: map['kind'] as String,
      location: map['location'] as String,
      logScrubbing: (() { final guardedValue = map['logScrubbing']; if (guardedValue == null) return null; return ProfileLogScrubbingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      originResponseTimeoutSeconds: (() { final guardedValue = map['originResponseTimeoutSeconds']; if (guardedValue == null) return null; return guardedValue as int; })(),
      provisioningState: map['provisioningState'] as String,
      resourceState: map['resourceState'] as String,
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
