// ignore_for_file: unused_element, unnecessary_cast

import 'api_entity_reference.dart';
import 'network_profile.dart';
import 'ngroup_container_group_properties.dart';
import 'storage_profile.dart';

/// The object that contains a reference to a Container Group Profile and it's other related properties.
class ContainerGroupProfileStub {
  /// Container Group properties which can be set while creating or updating the NGroups.
  final NGroupContainerGroupProperties? containerGroupProperties;
  /// A network profile for network settings of a ContainerGroupProfile.
  final NetworkProfile? networkProfile;
  /// A reference to the container group profile ARM resource hosted in ACI RP.
  final ApiEntityReference? resource;
  /// The revision of the CG profile is an optional property. If customer does not to provide a revision then NGroups will pickup the latest revision of CGProfile.
  final int? revision;
  /// Storage profile for storage related settings of a container group profile.
  final StorageProfile? storageProfile;

  /// Creates a new [ContainerGroupProfileStub].
  /// [containerGroupProperties] Container Group properties which can be set while creating or updating the NGroups.
  /// [networkProfile] A network profile for network settings of a ContainerGroupProfile.
  /// [resource] A reference to the container group profile ARM resource hosted in ACI RP.
  /// [revision] The revision of the CG profile is an optional property. If customer does not to provide a revision then NGroups will pickup the latest revision of CGProfile.
  /// [storageProfile] Storage profile for storage related settings of a container group profile.
  ContainerGroupProfileStub({
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

  factory ContainerGroupProfileStub.fromMap(Map<String, dynamic> map) {
    return ContainerGroupProfileStub(
      containerGroupProperties: map['containerGroupProperties'] == null ? null : NGroupContainerGroupProperties.fromMap((map['containerGroupProperties'] as Map).cast<String, dynamic>()),
      networkProfile: map['networkProfile'] == null ? null : NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      resource: map['resource'] == null ? null : ApiEntityReference.fromMap((map['resource'] as Map).cast<String, dynamic>()),
      revision: map['revision'] == null ? null : map['revision'] as int,
      storageProfile: map['storageProfile'] == null ? null : StorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

