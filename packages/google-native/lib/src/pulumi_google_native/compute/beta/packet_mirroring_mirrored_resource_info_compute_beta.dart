// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_mirrored_resource_info_instance_info_compute_beta.dart';
import 'packet_mirroring_mirrored_resource_info_subnet_info_compute_beta.dart';

class PacketMirroringMirroredResourceInfoComputeBeta {
  /// A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  final List<PacketMirroringMirroredResourceInfoInstanceInfoComputeBeta>?
      instances;

  /// A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  final List<PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta>?
      subnetworks;

  /// A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  final List<String>? tags;

  PacketMirroringMirroredResourceInfoComputeBeta({
    this.instances,
    this.subnetworks,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = pulumi.Input.encodeList<
          PacketMirroringMirroredResourceInfoInstanceInfoComputeBeta,
          Map<String, dynamic>>(instancesValue, (value) => value.toMap());
    }
    final subnetworksValue = subnetworks;
    if (subnetworksValue != null) {
      map['subnetworks'] = pulumi.Input.encodeList<
          PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta,
          Map<String, dynamic>>(subnetworksValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PacketMirroringMirroredResourceInfoComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoComputeBeta(
      instances: map['instances'] == null
          ? null
          : pulumi.Input.decodeList<
                  PacketMirroringMirroredResourceInfoInstanceInfoComputeBeta>(
              map['instances'],
              (value) =>
                  PacketMirroringMirroredResourceInfoInstanceInfoComputeBeta
                      .fromMap((value as Map).cast<String, dynamic>())),
      subnetworks: map['subnetworks'] == null
          ? null
          : pulumi.Input.decodeList<
                  PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta>(
              map['subnetworks'],
              (value) =>
                  PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta
                      .fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
