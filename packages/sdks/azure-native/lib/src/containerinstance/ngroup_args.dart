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
  const NGroupArgs({
    this.containerGroupProfiles,
    this.elasticProfile,
    this.identity,
    this.location,
    this.ngroupsName,
    this.placementProfile,
    required this.resourceGroupName,
    this.tags,
    this.updateProfile,
    this.zones,
  });

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
      containerGroupProfiles: (() { final guardedValue = map['containerGroupProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupProfileStub>(guardedValue, (value) => ContainerGroupProfileStub.fromMap((value as Map).cast<String, dynamic>()))); })(),
      elasticProfile: (() { final guardedValue = map['elasticProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NGroupIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ngroupsName: (() { final guardedValue = map['ngroupsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementProfile: (() { final guardedValue = map['placementProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateProfile: (() { final guardedValue = map['updateProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpdateProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

