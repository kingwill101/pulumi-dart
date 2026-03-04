// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference.dart';
import 'network_profile.dart';
import 'ngroup_container_group_properties.dart';
import 'storage_profile.dart';

/// The object that contains a reference to a Container Group Profile and it's other related properties.
class ContainerGroupProfileStub {
  /// Container Group properties which can be set while creating or updating the NGroups.
  final pulumi.Input<NGroupContainerGroupProperties>? containerGroupProperties;

  /// A network profile for network settings of a ContainerGroupProfile.
  final pulumi.Input<NetworkProfile>? networkProfile;

  /// A reference to the container group profile ARM resource hosted in ACI RP.
  final pulumi.Input<ApiEntityReference>? resource;

  /// The revision of the CG profile is an optional property. If customer does not to provide a revision then NGroups will pickup the latest revision of CGProfile.
  final pulumi.Input<int>? revision;

  /// Storage profile for storage related settings of a container group profile.
  final pulumi.Input<StorageProfile>? storageProfile;

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
      'containerGroupProperties':
          ?pulumi.Input.mapOptionalInputValue<
            NGroupContainerGroupProperties,
            Map<String, dynamic>
          >(containerGroupProperties, (value) => value.toMap()),
      'networkProfile':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkProfile,
            Map<String, dynamic>
          >(networkProfile, (value) => value.toMap()),
      'resource':
          ?pulumi.Input.mapOptionalInputValue<
            ApiEntityReference,
            Map<String, dynamic>
          >(resource, (value) => value.toMap()),
      'revision': ?revision,
      'storageProfile':
          ?pulumi.Input.mapOptionalInputValue<
            StorageProfile,
            Map<String, dynamic>
          >(storageProfile, (value) => value.toMap()),
    };
  }

  factory ContainerGroupProfileStub.fromMap(Map<String, dynamic> map) {
    return ContainerGroupProfileStub(
      containerGroupProperties: (() {
        final guardedValue = map['containerGroupProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NGroupContainerGroupProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      networkProfile: (() {
        final guardedValue = map['networkProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resource: (() {
        final guardedValue = map['resource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApiEntityReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      revision: (() {
        final guardedValue = map['revision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      storageProfile: (() {
        final guardedValue = map['storageProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
