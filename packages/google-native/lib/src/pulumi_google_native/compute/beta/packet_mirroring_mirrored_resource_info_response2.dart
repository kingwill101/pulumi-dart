// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'packet_mirroring_mirrored_resource_info_instance_info_response2.dart';
import 'packet_mirroring_mirrored_resource_info_subnet_info_response2.dart';

class PacketMirroringMirroredResourceInfoResponse2 {
  /// A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring. Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring. You may specify a maximum of 50 Instances.
  final List<PacketMirroringMirroredResourceInfoInstanceInfoResponse2>
      instances;

  /// A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring. You may specify a maximum of 5 subnetworks.
  final List<PacketMirroringMirroredResourceInfoSubnetInfoResponse2>
      subnetworks;

  /// A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  final List<String> tags;

  PacketMirroringMirroredResourceInfoResponse2({
    required this.instances,
    required this.subnetworks,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instances'] = Input.encodeList<
        PacketMirroringMirroredResourceInfoInstanceInfoResponse2,
        Map<String, dynamic>>(instances, (value) => value.toMap());
    map['subnetworks'] = Input.encodeList<
        PacketMirroringMirroredResourceInfoSubnetInfoResponse2,
        Map<String, dynamic>>(subnetworks, (value) => value.toMap());
    map['tags'] = tags;
    return map;
  }

  factory PacketMirroringMirroredResourceInfoResponse2.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoResponse2(
      instances: Input.decodeList<
              PacketMirroringMirroredResourceInfoInstanceInfoResponse2>(
          map['instances'],
          (value) =>
              PacketMirroringMirroredResourceInfoInstanceInfoResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      subnetworks: Input.decodeList<
              PacketMirroringMirroredResourceInfoSubnetInfoResponse2>(
          map['subnetworks'],
          (value) =>
              PacketMirroringMirroredResourceInfoSubnetInfoResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
