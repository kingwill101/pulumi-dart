// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'packet_mirroring_mirrored_resource_info_instance_info3.dart';
import 'packet_mirroring_mirrored_resource_info_subnet_info3.dart';

class PacketMirroringMirroredResourceInfo3 {
  /// A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  final List<PacketMirroringMirroredResourceInfoInstanceInfo3>? instances;

  /// A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  final List<PacketMirroringMirroredResourceInfoSubnetInfo3>? subnetworks;

  /// A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  final List<String>? tags;

  PacketMirroringMirroredResourceInfo3({
    this.instances,
    this.subnetworks,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = Input.encodeList<
          PacketMirroringMirroredResourceInfoInstanceInfo3,
          Map<String, dynamic>>(instancesValue, (value) => value.toMap());
    }
    final subnetworksValue = subnetworks;
    if (subnetworksValue != null) {
      map['subnetworks'] = Input.encodeList<
          PacketMirroringMirroredResourceInfoSubnetInfo3,
          Map<String, dynamic>>(subnetworksValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PacketMirroringMirroredResourceInfo3.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfo3(
      instances: map['instances'] == null
          ? null
          : Input.decodeList<PacketMirroringMirroredResourceInfoInstanceInfo3>(
              map['instances'],
              (value) =>
                  PacketMirroringMirroredResourceInfoInstanceInfo3.fromMap(
                      (value as Map).cast<String, dynamic>())),
      subnetworks: map['subnetworks'] == null
          ? null
          : Input.decodeList<PacketMirroringMirroredResourceInfoSubnetInfo3>(
              map['subnetworks'],
              (value) => PacketMirroringMirroredResourceInfoSubnetInfo3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
