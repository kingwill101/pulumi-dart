// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_subnet_id.dart';
import 'ngroup_cgproperty_container.dart';
import 'ngroup_cgproperty_volume.dart';

/// Container Group properties which can be set while creating or updating the NGroups.
class NGroupContainerGroupProperties {
  /// Contains information about Container which can be set while creating or updating the NGroups.
  final pulumi.Input<List<NGroupCGPropertyContainer>?>? containers;
  /// Contains information about Virtual Network Subnet ARM Resource
  final pulumi.Input<List<ContainerGroupSubnetId>?>? subnetIds;
  /// Contains information about the volumes that can be mounted by Containers in the Container Groups.
  final pulumi.Input<List<NGroupCGPropertyVolume>?>? volumes;

  /// Creates a new [NGroupContainerGroupProperties].
  /// [containers] Contains information about Container which can be set while creating or updating the NGroups.
  /// [subnetIds] Contains information about Virtual Network Subnet ARM Resource
  /// [volumes] Contains information about the volumes that can be mounted by Containers in the Container Groups.
  const NGroupContainerGroupProperties({
    this.containers,
    this.subnetIds,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?pulumi.Input.mapOptionalInputValue<List<NGroupCGPropertyContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<NGroupCGPropertyContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetIds': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupSubnetId>, List<Map<String, dynamic>>>(subnetIds, (value) => pulumi.Input.encodeList<ContainerGroupSubnetId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<NGroupCGPropertyVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<NGroupCGPropertyVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NGroupContainerGroupProperties.fromMap(Map<String, dynamic> map) {
    return NGroupContainerGroupProperties(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NGroupCGPropertyContainer>(guardedValue, (value) => NGroupCGPropertyContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupSubnetId>(guardedValue, (value) => ContainerGroupSubnetId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NGroupCGPropertyVolume>(guardedValue, (value) => NGroupCGPropertyVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
