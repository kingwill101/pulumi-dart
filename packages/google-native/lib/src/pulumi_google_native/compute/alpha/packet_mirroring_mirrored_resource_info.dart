// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_mirrored_resource_info_instance_info.dart';
import 'packet_mirroring_mirrored_resource_info_subnet_info.dart';

class PacketMirroringMirroredResourceInfo {
  /// A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  final List<PacketMirroringMirroredResourceInfoInstanceInfo>? instances;

  /// A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  final List<PacketMirroringMirroredResourceInfoSubnetInfo>? subnetworks;

  /// A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  final List<String>? tags;

  PacketMirroringMirroredResourceInfo({
    this.instances,
    this.subnetworks,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = pulumi.Input.encodeList<
          PacketMirroringMirroredResourceInfoInstanceInfo,
          Map<String, dynamic>>(instancesValue, (value) => value.toMap());
    }
    final subnetworksValue = subnetworks;
    if (subnetworksValue != null) {
      map['subnetworks'] = pulumi.Input.encodeList<
          PacketMirroringMirroredResourceInfoSubnetInfo,
          Map<String, dynamic>>(subnetworksValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PacketMirroringMirroredResourceInfo.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfo(
      instances: map['instances'] == null
          ? null
          : pulumi.Input.decodeList<
                  PacketMirroringMirroredResourceInfoInstanceInfo>(
              map['instances'],
              (value) =>
                  PacketMirroringMirroredResourceInfoInstanceInfo.fromMap(
                      (value as Map).cast<String, dynamic>())),
      subnetworks: map['subnetworks'] == null
          ? null
          : pulumi.Input.decodeList<
                  PacketMirroringMirroredResourceInfoSubnetInfo>(
              map['subnetworks'],
              (value) => PacketMirroringMirroredResourceInfoSubnetInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
