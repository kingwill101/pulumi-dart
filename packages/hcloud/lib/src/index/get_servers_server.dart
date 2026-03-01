// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_servers_server_network.dart';

class GetServersServer {
  final String backupWindow;
  final bool backups;
  final String datacenter;
  final bool deleteProtection;
  final List<int> firewallIds;
  final int id;
  final String image;
  final String ipv4Address;
  final String ipv6Address;
  final String ipv6Network;
  final String iso;
  final Map<String, String> labels;
  final String location;
  final String name;
  final List<GetServersServerNetwork>? networks;
  final int? placementGroupId;
  final int primaryDiskSize;
  final bool rebuildProtection;
  final String rescue;
  final String serverType;
  final String status;

  /// Creates a new [GetServersServer].
  /// [backupWindow] Required.
  /// [backups] Required.
  /// [datacenter] Required.
  /// [deleteProtection] Required.
  /// [firewallIds] Required.
  /// [id] Required.
  /// [image] Required.
  /// [ipv4Address] Required.
  /// [ipv6Address] Required.
  /// [ipv6Network] Required.
  /// [iso] Required.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [networks] Optional.
  /// [placementGroupId] Optional.
  /// [primaryDiskSize] Required.
  /// [rebuildProtection] Required.
  /// [rescue] Required.
  /// [serverType] Required.
  /// [status] Required.
  GetServersServer({
    required this.backupWindow,
    required this.backups,
    required this.datacenter,
    required this.deleteProtection,
    required this.firewallIds,
    required this.id,
    required this.image,
    required this.ipv4Address,
    required this.ipv6Address,
    required this.ipv6Network,
    required this.iso,
    required this.labels,
    required this.location,
    required this.name,
    this.networks,
    this.placementGroupId,
    required this.primaryDiskSize,
    required this.rebuildProtection,
    required this.rescue,
    required this.serverType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupWindow': backupWindow,
      'backups': backups,
      'datacenter': datacenter,
      'deleteProtection': deleteProtection,
      'firewallIds': firewallIds,
      'id': id,
      'image': image,
      'ipv4Address': ipv4Address,
      'ipv6Address': ipv6Address,
      'ipv6Network': ipv6Network,
      'iso': iso,
      'labels': labels,
      'location': location,
      'name': name,
      'networks': ?networks == null ? null : pulumi.Input.encodeList<GetServersServerNetwork, Map<String, dynamic>>(networks!, (value) => value.toMap()),
      'placementGroupId': ?placementGroupId,
      'primaryDiskSize': primaryDiskSize,
      'rebuildProtection': rebuildProtection,
      'rescue': rescue,
      'serverType': serverType,
      'status': status,
    };
  }

  factory GetServersServer.fromMap(Map<String, dynamic> map) {
    return GetServersServer(
      backupWindow: map['backupWindow'] as String,
      backups: map['backups'] as bool,
      datacenter: map['datacenter'] as String,
      deleteProtection: map['deleteProtection'] as bool,
      firewallIds: (map['firewallIds'] as List).cast<int>(),
      id: map['id'] as int,
      image: map['image'] as String,
      ipv4Address: map['ipv4Address'] as String,
      ipv6Address: map['ipv6Address'] as String,
      ipv6Network: map['ipv6Network'] as String,
      iso: map['iso'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      networks: map['networks'] == null ? null : pulumi.Input.decodeList<GetServersServerNetwork>(map['networks'], (value) => GetServersServerNetwork.fromMap((value as Map).cast<String, dynamic>())),
      placementGroupId: map['placementGroupId'] == null ? null : map['placementGroupId'] as int,
      primaryDiskSize: map['primaryDiskSize'] as int,
      rebuildProtection: map['rebuildProtection'] as bool,
      rescue: map['rescue'] as String,
      serverType: map['serverType'] as String,
      status: map['status'] as String,
    );
  }
}

