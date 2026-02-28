// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_mirrored_resource_info_instance_info_response_compute_beta.dart';
import 'packet_mirroring_mirrored_resource_info_subnet_info_response_compute_beta.dart';

class PacketMirroringMirroredResourceInfoResponseComputeBeta {
  /// A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  final List<PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeBeta>
      instances;

  /// A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  final List<PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta>
      subnetworks;

  /// A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  final List<String> tags;

  /// Creates a new [PacketMirroringMirroredResourceInfoResponseComputeBeta].
  /// [instances] A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  /// [subnetworks] A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  /// [tags] A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  PacketMirroringMirroredResourceInfoResponseComputeBeta({
    required this.instances,
    required this.subnetworks,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instances'] = pulumi.Input.encodeList<
        PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeBeta,
        Map<String, dynamic>>(instances, (value) => value.toMap());
    map['subnetworks'] = pulumi.Input.encodeList<
        PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta,
        Map<String, dynamic>>(subnetworks, (value) => value.toMap());
    map['tags'] = tags;
    return map;
  }

  factory PacketMirroringMirroredResourceInfoResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoResponseComputeBeta(
      instances: pulumi.Input.decodeList<
              PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeBeta>(
          map['instances'],
          (value) =>
              PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeBeta
                  .fromMap((value as Map).cast<String, dynamic>())),
      subnetworks: pulumi.Input.decodeList<
              PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta>(
          map['subnetworks'],
          (value) =>
              PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta
                  .fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
