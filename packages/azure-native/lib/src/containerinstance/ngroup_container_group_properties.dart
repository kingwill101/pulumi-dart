// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_subnet_id.dart';
import 'ngroup_cgproperty_container.dart';
import 'ngroup_cgproperty_volume.dart';

/// Container Group properties which can be set while creating or updating the NGroups.
class NGroupContainerGroupProperties {
  /// Contains information about Container which can be set while creating or updating the NGroups.
  final List<NGroupCGPropertyContainer>? containers;
  /// Contains information about Virtual Network Subnet ARM Resource
  final List<ContainerGroupSubnetId>? subnetIds;
  /// Contains information about the volumes that can be mounted by Containers in the Container Groups.
  final List<NGroupCGPropertyVolume>? volumes;

  /// Creates a new [NGroupContainerGroupProperties].
  /// [containers] Contains information about Container which can be set while creating or updating the NGroups.
  /// [subnetIds] Contains information about Virtual Network Subnet ARM Resource
  /// [volumes] Contains information about the volumes that can be mounted by Containers in the Container Groups.
  NGroupContainerGroupProperties({
    this.containers,
    this.subnetIds,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers == null ? null : pulumi.Input.encodeList<NGroupCGPropertyContainer, Map<String, dynamic>>(containers!, (value) => value.toMap()),
      'subnetIds': ?subnetIds == null ? null : pulumi.Input.encodeList<ContainerGroupSubnetId, Map<String, dynamic>>(subnetIds!, (value) => value.toMap()),
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<NGroupCGPropertyVolume, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory NGroupContainerGroupProperties.fromMap(Map<String, dynamic> map) {
    return NGroupContainerGroupProperties(
      containers: map['containers'] == null ? null : pulumi.Input.decodeList<NGroupCGPropertyContainer>(map['containers'], (value) => NGroupCGPropertyContainer.fromMap((value as Map).cast<String, dynamic>())),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Input.decodeList<ContainerGroupSubnetId>(map['subnetIds'], (value) => ContainerGroupSubnetId.fromMap((value as Map).cast<String, dynamic>())),
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<NGroupCGPropertyVolume>(map['volumes'], (value) => NGroupCGPropertyVolume.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

