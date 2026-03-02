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
  /// The resource id.
  final String id;
  /// The identity of the NGroup, if configured.
  final NGroupIdentityResponse? identity;
  /// The resource location.
  final String? location;
  /// The resource name.
  final String name;
  /// Provides options w.r.t allocation and management w.r.t certain placement policies. These utilize capabilities provided by the underlying Azure infrastructure. They are typically used for high availability scenarios. E.g., distributing CGs across fault domains.
  final PlacementProfileResponse? placementProfile;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String type;
  /// Used by the customer to specify the way to update the Container Groups in NGroup.
  final UpdateProfileResponse? updateProfile;
  /// The zones for the container group.
  final List<String>? zones;

  /// Creates a new [GetNGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerGroupProfiles] The Container Group Profiles that could be used in the NGroups resource.
  /// [elasticProfile] The elastic profile.
  /// [id] The resource id.
  /// [identity] The identity of the NGroup, if configured.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [placementProfile] Provides options w.r.t allocation and management w.r.t certain placement policies. These utilize capabilities provided by the underlying Azure infrastructure. They are typically used for high availability scenarios. E.g., distributing CGs across fault domains.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] The resource tags.
  /// [type] The resource type.
  /// [updateProfile] Used by the customer to specify the way to update the Container Groups in NGroup.
  /// [zones] The zones for the container group.
  GetNGroupResult({
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
      'containerGroupProfiles': ?containerGroupProfiles == null ? null : pulumi.Input.encodeList<ContainerGroupProfileStubResponse, Map<String, dynamic>>(containerGroupProfiles!, (value) => value.toMap()),
      'elasticProfile': ?elasticProfile == null ? null : elasticProfile!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'placementProfile': ?placementProfile == null ? null : placementProfile!.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'updateProfile': ?updateProfile == null ? null : updateProfile!.toMap(),
      'zones': ?zones,
    };
  }

  factory GetNGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      containerGroupProfiles: map['containerGroupProfiles'] == null ? null : pulumi.Input.decodeList<ContainerGroupProfileStubResponse>(map['containerGroupProfiles']!, (value) => ContainerGroupProfileStubResponse.fromMap((value as Map).cast<String, dynamic>())),
      elasticProfile: map['elasticProfile'] == null ? null : ElasticProfileResponse.fromMap((map['elasticProfile']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : NGroupIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      placementProfile: map['placementProfile'] == null ? null : PlacementProfileResponse.fromMap((map['placementProfile']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      updateProfile: map['updateProfile'] == null ? null : UpdateProfileResponse.fromMap((map['updateProfile']! as Map).cast<String, dynamic>()),
      zones: map['zones'] == null ? null : (map['zones']! as List).cast<String>(),
    );
  }
}

