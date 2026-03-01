// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_profile_stub.dart';
import 'elastic_profile.dart';
import 'ngroup_identity.dart';
import 'placement_profile.dart';
import 'update_profile.dart';

/// {@template pulumi_containerinstance_ngroup_args_doc}
/// The set of arguments for NGroup.
/// {@endtemplate}
/// {@macro pulumi_containerinstance_ngroup_args_doc}
class NGroupArgs {
  /// The Container Group Profiles that could be used in the NGroups resource.
  final pulumi.Input<List<ContainerGroupProfileStub>>? containerGroupProfiles;
  /// The elastic profile.
  final pulumi.Input<ElasticProfile>? elasticProfile;
  /// The identity of the NGroup, if configured.
  final pulumi.Input<NGroupIdentity>? identity;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The NGroups name.
  final pulumi.Input<String>? ngroupsName;
  /// Provides options w.r.t allocation and management w.r.t certain placement policies. These utilize capabilities provided by the underlying Azure infrastructure. They are typically used for high availability scenarios. E.g., distributing CGs across fault domains.
  final pulumi.Input<PlacementProfile>? placementProfile;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Used by the customer to specify the way to update the Container Groups in NGroup.
  final pulumi.Input<UpdateProfile>? updateProfile;
  /// The zones for the container group.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [NGroupArgs].
  /// [containerGroupProfiles] The Container Group Profiles that could be used in the NGroups resource.
  /// [elasticProfile] The elastic profile.
  /// [identity] The identity of the NGroup, if configured.
  /// [location] The resource location.
  /// [ngroupsName] The NGroups name.
  /// [placementProfile] Provides options w.r.t allocation and management w.r.t certain placement policies. These utilize capabilities provided by the underlying Azure infrastructure. They are typically used for high availability scenarios. E.g., distributing CGs across fault domains.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The resource tags.
  /// [updateProfile] Used by the customer to specify the way to update the Container Groups in NGroup.
  /// [zones] The zones for the container group.
  NGroupArgs({
    List<ContainerGroupProfileStub>? containerGroupProfiles,
    ElasticProfile? elasticProfile,
    NGroupIdentity? identity,
    String? location,
    String? ngroupsName,
    PlacementProfile? placementProfile,
    required String resourceGroupName,
    Map<String, String>? tags,
    UpdateProfile? updateProfile,
    List<String>? zones,
  }) :
      containerGroupProfiles = pulumi.Input.asOptionalInput<List<ContainerGroupProfileStub>>(containerGroupProfiles),
      elasticProfile = pulumi.Input.asOptionalInput<ElasticProfile>(elasticProfile),
      identity = pulumi.Input.asOptionalInput<NGroupIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      ngroupsName = pulumi.Input.asOptionalInput<String>(ngroupsName),
      placementProfile = pulumi.Input.asOptionalInput<PlacementProfile>(placementProfile),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      updateProfile = pulumi.Input.asOptionalInput<UpdateProfile>(updateProfile),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupProfiles': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupProfileStub>, List<Map<String, dynamic>>>(containerGroupProfiles, (value) => pulumi.Input.encodeList<ContainerGroupProfileStub, Map<String, dynamic>>(value, (value) => value.toMap())),
      'elasticProfile': ?pulumi.Input.mapOptionalInputValue<ElasticProfile, Map<String, dynamic>>(elasticProfile, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<NGroupIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'ngroupsName': ?ngroupsName,
      'placementProfile': ?pulumi.Input.mapOptionalInputValue<PlacementProfile, Map<String, dynamic>>(placementProfile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'updateProfile': ?pulumi.Input.mapOptionalInputValue<UpdateProfile, Map<String, dynamic>>(updateProfile, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory NGroupArgs.fromMap(Map<String, dynamic> map) {
    return NGroupArgs(
      containerGroupProfiles: map['containerGroupProfiles'] == null ? null : pulumi.Input.decodeList<ContainerGroupProfileStub>(map['containerGroupProfiles'], (value) => ContainerGroupProfileStub.fromMap((value as Map).cast<String, dynamic>())),
      elasticProfile: map['elasticProfile'] == null ? null : ElasticProfile.fromMap((map['elasticProfile'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : NGroupIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      ngroupsName: map['ngroupsName'] == null ? null : map['ngroupsName'] as String,
      placementProfile: map['placementProfile'] == null ? null : PlacementProfile.fromMap((map['placementProfile'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      updateProfile: map['updateProfile'] == null ? null : UpdateProfile.fromMap((map['updateProfile'] as Map).cast<String, dynamic>()),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

