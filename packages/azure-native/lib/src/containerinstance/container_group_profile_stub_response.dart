// ignore_for_file: unused_element, unnecessary_cast

import 'api_entity_reference_response.dart';
import 'network_profile_response.dart';
import 'ngroup_container_group_properties_response.dart';
import 'storage_profile_response.dart';

/// The object that contains a reference to a Container Group Profile and it's other related properties.
class ContainerGroupProfileStubResponse {
  /// Container Group properties which can be set while creating or updating the NGroups.
  final NGroupContainerGroupPropertiesResponse? containerGroupProperties;
  /// A network profile for network settings of a ContainerGroupProfile.
  final NetworkProfileResponse? networkProfile;
  /// A reference to the container group profile ARM resource hosted in ACI RP.
  final ApiEntityReferenceResponse? resource;
  /// The revision of the CG profile is an optional property. If customer does not to provide a revision then NGroups will pickup the latest revision of CGProfile.
  final int? revision;
  /// Storage profile for storage related settings of a container group profile.
  final StorageProfileResponse? storageProfile;

  /// Creates a new [ContainerGroupProfileStubResponse].
  /// [containerGroupProperties] Container Group properties which can be set while creating or updating the NGroups.
  /// [networkProfile] A network profile for network settings of a ContainerGroupProfile.
  /// [resource] A reference to the container group profile ARM resource hosted in ACI RP.
  /// [revision] The revision of the CG profile is an optional property. If customer does not to provide a revision then NGroups will pickup the latest revision of CGProfile.
  /// [storageProfile] Storage profile for storage related settings of a container group profile.
  ContainerGroupProfileStubResponse({
    this.containerGroupProperties,
    this.networkProfile,
    this.resource,
    this.revision,
    this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupProperties': ?containerGroupProperties == null ? null : containerGroupProperties!.toMap(),
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'resource': ?resource == null ? null : resource!.toMap(),
      'revision': ?revision,
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
    };
  }

  factory ContainerGroupProfileStubResponse.fromMap(Map<String, dynamic> map) {
    return ContainerGroupProfileStubResponse(
      containerGroupProperties: map['containerGroupProperties'] == null ? null : NGroupContainerGroupPropertiesResponse.fromMap((map['containerGroupProperties'] as Map).cast<String, dynamic>()),
      networkProfile: map['networkProfile'] == null ? null : NetworkProfileResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      resource: map['resource'] == null ? null : ApiEntityReferenceResponse.fromMap((map['resource'] as Map).cast<String, dynamic>()),
      revision: map['revision'] == null ? null : map['revision'] as int,
      storageProfile: map['storageProfile'] == null ? null : StorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

