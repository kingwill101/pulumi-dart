// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_vpc_network/get_network_vpc_network.dart';

/// Result data returned by getNetwork.
class GetNetworkResult2 {
  final String createTime;
  final String description;
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final String? project;
  final String state;
  final String type;
  final String uid;
  final String updateTime;
  final List<GetNetworkVpcNetwork> vpcNetworks;

  GetNetworkResult2({
    required this.createTime,
    required this.description,
    required this.etag,
    required this.id,
    required this.location,
    required this.name,
    this.project,
    required this.state,
    required this.type,
    required this.uid,
    required this.updateTime,
    required this.vpcNetworks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['etag'] = etag;
    map['id'] = id;
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['state'] = state;
    map['type'] = type;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    map['vpcNetworks'] =
        Input.encodeList<GetNetworkVpcNetwork, Map<String, dynamic>>(
            vpcNetworks, (value) => value.toMap());
    return map;
  }

  factory GetNetworkResult2.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult2(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      vpcNetworks: Input.decodeList<GetNetworkVpcNetwork>(
          map['vpcNetworks'],
          (value) => GetNetworkVpcNetwork.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
