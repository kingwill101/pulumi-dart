// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_profile_stub_response.dart';
import 'elastic_profile_response.dart';
import 'ngroup_identity_response.dart';
import 'placement_profile_response.dart';
import 'system_data_response.dart';
import 'update_profile_response.dart';

/// Result data returned by getNGroup.
class GetNGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The Container Group Profiles that could be used in the NGroups resource.
  final List<ContainerGroupProfileStubResponse>? containerGroupProfiles;
  /// The elastic profile.
  final ElasticProfileResponse? elasticProfile;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The identity of the NGroup, if configured.
  final NGroupIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// Provides options w.r.t allocation and management w.r.t certain placement policies. These utilize capabilities provided by the underlying Azure infrastructure. They are typically used for high availability scenarios. E.g., distributing CGs across fault domains.
  final PlacementProfileResponse? placementProfile;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Used by the customer to specify the way to update the Container Groups in NGroup.
  final UpdateProfileResponse? updateProfile;
  /// The availability zones.
  final List<String>? zones;

  /// Creates a new [GetNGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerGroupProfiles] The Container Group Profiles that could be used in the NGroups resource.
  /// [elasticProfile] The elastic profile.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The identity of the NGroup, if configured.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [placementProfile] Provides options w.r.t allocation and management w.r.t certain placement policies. These utilize capabilities provided by the underlying Azure infrastructure. They are typically used for high availability scenarios. E.g., distributing CGs across fault domains.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updateProfile] Used by the customer to specify the way to update the Container Groups in NGroup.
  /// [zones] The availability zones.
  const GetNGroupResult({
    required this.azureApiVersion,
    this.containerGroupProfiles,
    this.elasticProfile,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    this.placementProfile,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    this.updateProfile,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'containerGroupProfiles': ?(() { final guardedValue = containerGroupProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<ContainerGroupProfileStubResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'elasticProfile': ?elasticProfile?.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': name,
      'placementProfile': ?placementProfile?.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'updateProfile': ?updateProfile?.toMap(),
      'zones': ?zones,
    };
  }

  factory GetNGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      containerGroupProfiles: (() { final guardedValue = map['containerGroupProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerGroupProfileStubResponse>(guardedValue, (value) => ContainerGroupProfileStubResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      elasticProfile: (() { final guardedValue = map['elasticProfile']; if (guardedValue == null) return null; return ElasticProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return NGroupIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      placementProfile: (() { final guardedValue = map['placementProfile']; if (guardedValue == null) return null; return PlacementProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      updateProfile: (() { final guardedValue = map['updateProfile']; if (guardedValue == null) return null; return UpdateProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
