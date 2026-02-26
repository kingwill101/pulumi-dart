// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'packet_mirroring_mirrored_resource_info_instance_info2.dart';
import 'packet_mirroring_mirrored_resource_info_subnet_info2.dart';

class PacketMirroringMirroredResourceInfo2 {
  /// A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  final List<PacketMirroringMirroredResourceInfoInstanceInfo2>? instances;

  /// A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  final List<PacketMirroringMirroredResourceInfoSubnetInfo2>? subnetworks;

  /// A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  final List<String>? tags;

  PacketMirroringMirroredResourceInfo2({
    this.instances,
    this.subnetworks,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = Input.encodeList<
          PacketMirroringMirroredResourceInfoInstanceInfo2,
          Map<String, dynamic>>(instancesValue, (value) => value.toMap());
    }
    final subnetworksValue = subnetworks;
    if (subnetworksValue != null) {
      map['subnetworks'] = Input.encodeList<
          PacketMirroringMirroredResourceInfoSubnetInfo2,
          Map<String, dynamic>>(subnetworksValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PacketMirroringMirroredResourceInfo2.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfo2(
      instances: map['instances'] == null
          ? null
          : Input.decodeList<PacketMirroringMirroredResourceInfoInstanceInfo2>(
              map['instances'],
              (value) =>
                  PacketMirroringMirroredResourceInfoInstanceInfo2.fromMap(
                      (value as Map).cast<String, dynamic>())),
      subnetworks: map['subnetworks'] == null
          ? null
          : Input.decodeList<PacketMirroringMirroredResourceInfoSubnetInfo2>(
              map['subnetworks'],
              (value) => PacketMirroringMirroredResourceInfoSubnetInfo2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
