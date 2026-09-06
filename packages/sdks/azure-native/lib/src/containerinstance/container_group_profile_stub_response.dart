// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference_response.dart';
import 'network_profile_response.dart';
import 'ngroup_container_group_properties_response.dart';
import 'storage_profile_response.dart';

/// The object that contains a reference to a Container Group Profile and it's other related properties.
class ContainerGroupProfileStubResponse {
  /// Container Group properties which can be set while creating or updating the NGroups.
  final pulumi.Input<NGroupContainerGroupPropertiesResponse?>? containerGroupProperties;
  /// A network profile for network settings of a ContainerGroupProfile.
  final pulumi.Input<NetworkProfileResponse?>? networkProfile;
  /// A reference to the container group profile ARM resource hosted in ACI RP.
  final pulumi.Input<ApiEntityReferenceResponse?>? resource;
  /// The revision of the CG profile is an optional property. If customer does not to provide a revision then NGroups will pickup the latest revision of CGProfile.
  final pulumi.Input<int?>? revision;
  /// Storage profile for storage related settings of a container group profile.
  final pulumi.Input<StorageProfileResponse?>? storageProfile;

  /// Creates a new [ContainerGroupProfileStubResponse].
  /// [containerGroupProperties] Container Group properties which can be set while creating or updating the NGroups.
  /// [networkProfile] A network profile for network settings of a ContainerGroupProfile.
  /// [resource] A reference to the container group profile ARM resource hosted in ACI RP.
  /// [revision] The revision of the CG profile is an optional property. If customer does not to provide a revision then NGroups will pickup the latest revision of CGProfile.
  /// [storageProfile] Storage profile for storage related settings of a container group profile.
  const ContainerGroupProfileStubResponse({
    this.containerGroupProperties,
    this.networkProfile,
    this.resource,
    this.revision,
    this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupProperties': ?pulumi.Input.mapOptionalInputValue<NGroupContainerGroupPropertiesResponse, Map<String, dynamic>>(containerGroupProperties, (value) => value.toMap()),
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfileResponse, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'resource': ?pulumi.Input.mapOptionalInputValue<ApiEntityReferenceResponse, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'revision': ?revision,
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfileResponse, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
    };
  }

  factory ContainerGroupProfileStubResponse.fromMap(Map<String, dynamic> map) {
    return ContainerGroupProfileStubResponse(
      containerGroupProperties: (() { final guardedValue = map['containerGroupProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NGroupContainerGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiEntityReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
