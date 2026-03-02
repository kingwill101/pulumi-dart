// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_subnet_id_response.dart';
import 'ngroup_cgproperty_container_response.dart';
import 'ngroup_cgproperty_volume_response.dart';

/// Container Group properties which can be set while creating or updating the NGroups.
class NGroupContainerGroupPropertiesResponse {
  /// Contains information about Container which can be set while creating or updating the NGroups.
  final pulumi.Input<List<NGroupCGPropertyContainerResponse>>? containers;
  /// Contains information about Virtual Network Subnet ARM Resource
  final pulumi.Input<List<ContainerGroupSubnetIdResponse>>? subnetIds;
  /// Contains information about the volumes that can be mounted by Containers in the Container Groups.
  final pulumi.Input<List<NGroupCGPropertyVolumeResponse>>? volumes;

  /// Creates a new [NGroupContainerGroupPropertiesResponse].
  /// [containers] Contains information about Container which can be set while creating or updating the NGroups.
  /// [subnetIds] Contains information about Virtual Network Subnet ARM Resource
  /// [volumes] Contains information about the volumes that can be mounted by Containers in the Container Groups.
  NGroupContainerGroupPropertiesResponse({
    this.containers,
    this.subnetIds,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?pulumi.Input.mapOptionalInputValue<List<NGroupCGPropertyContainerResponse>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<NGroupCGPropertyContainerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetIds': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupSubnetIdResponse>, List<Map<String, dynamic>>>(subnetIds, (value) => pulumi.Input.encodeList<ContainerGroupSubnetIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<NGroupCGPropertyVolumeResponse>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<NGroupCGPropertyVolumeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NGroupContainerGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NGroupContainerGroupPropertiesResponse(
      containers: map['containers'] == null ? null : (pulumi.Input.decodeList<NGroupCGPropertyContainerResponse>(map['containers'], (value) => NGroupCGPropertyContainerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnetIds: map['subnetIds'] == null ? null : (pulumi.Input.decodeList<ContainerGroupSubnetIdResponse>(map['subnetIds'], (value) => ContainerGroupSubnetIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<NGroupCGPropertyVolumeResponse>(map['volumes'], (value) => NGroupCGPropertyVolumeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

