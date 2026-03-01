// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_vpc_network.dart';

/// Result data returned by getNetwork.
class GetNetworkResult {
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

  /// Creates a new [GetNetworkResult].
  /// [createTime] Required.
  /// [description] Required.
  /// [etag] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [state] Required.
  /// [type] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  /// [vpcNetworks] Required.
  GetNetworkResult({
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
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'id': id,
      'location': location,
      'name': name,
      'project': ?project,
      'state': state,
      'type': type,
      'uid': uid,
      'updateTime': updateTime,
      'vpcNetworks':
          pulumi.Input.encodeList<GetNetworkVpcNetwork, Map<String, dynamic>>(
            vpcNetworks,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult(
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
      vpcNetworks: pulumi.Input.decodeList<GetNetworkVpcNetwork>(
        map['vpcNetworks'],
        (value) => GetNetworkVpcNetwork.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
