// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_mirrored_resource_info_instance_info_compute_v1.dart';
import 'packet_mirroring_mirrored_resource_info_subnet_info_compute_v1.dart';

class PacketMirroringMirroredResourceInfoComputeV1 {
  /// A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  final List<PacketMirroringMirroredResourceInfoInstanceInfoComputeV1>?
      instances;

  /// A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  final List<PacketMirroringMirroredResourceInfoSubnetInfoComputeV1>?
      subnetworks;

  /// A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  final List<String>? tags;

  PacketMirroringMirroredResourceInfoComputeV1({
    this.instances,
    this.subnetworks,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = pulumi.Input.encodeList<
          PacketMirroringMirroredResourceInfoInstanceInfoComputeV1,
          Map<String, dynamic>>(instancesValue, (value) => value.toMap());
    }
    final subnetworksValue = subnetworks;
    if (subnetworksValue != null) {
      map['subnetworks'] = pulumi.Input.encodeList<
          PacketMirroringMirroredResourceInfoSubnetInfoComputeV1,
          Map<String, dynamic>>(subnetworksValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PacketMirroringMirroredResourceInfoComputeV1.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoComputeV1(
      instances: map['instances'] == null
          ? null
          : pulumi.Input.decodeList<
                  PacketMirroringMirroredResourceInfoInstanceInfoComputeV1>(
              map['instances'],
              (value) =>
                  PacketMirroringMirroredResourceInfoInstanceInfoComputeV1
                      .fromMap((value as Map).cast<String, dynamic>())),
      subnetworks: map['subnetworks'] == null
          ? null
          : pulumi.Input.decodeList<
                  PacketMirroringMirroredResourceInfoSubnetInfoComputeV1>(
              map['subnetworks'],
              (value) => PacketMirroringMirroredResourceInfoSubnetInfoComputeV1
                  .fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
