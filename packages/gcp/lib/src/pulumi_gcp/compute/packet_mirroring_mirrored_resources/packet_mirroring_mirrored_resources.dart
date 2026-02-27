// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../packet_mirroring_mirrored_resources_instance/packet_mirroring_mirrored_resources_instance.dart';
import '../packet_mirroring_mirrored_resources_subnetwork/packet_mirroring_mirrored_resources_subnetwork.dart';

class PacketMirroringMirroredResources {
  /// All the listed instances will be mirrored.  Specify at most 50.
  /// Structure is documented below.
  final List<PacketMirroringMirroredResourcesInstance>? instances;

  /// All instances in one of these subnetworks will be mirrored.
  /// Structure is documented below.
  final List<PacketMirroringMirroredResourcesSubnetwork>? subnetworks;

  /// All instances with these tags will be mirrored.
  final List<String>? tags;

  PacketMirroringMirroredResources({
    this.instances,
    this.subnetworks,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = pulumi.Input.encodeList<
          PacketMirroringMirroredResourcesInstance,
          Map<String, dynamic>>(instancesValue, (value) => value.toMap());
    }
    final subnetworksValue = subnetworks;
    if (subnetworksValue != null) {
      map['subnetworks'] = pulumi.Input.encodeList<
          PacketMirroringMirroredResourcesSubnetwork,
          Map<String, dynamic>>(subnetworksValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PacketMirroringMirroredResources.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResources(
      instances: map['instances'] == null
          ? null
          : pulumi.Input.decodeList<PacketMirroringMirroredResourcesInstance>(
              map['instances'],
              (value) => PacketMirroringMirroredResourcesInstance.fromMap(
                  (value as Map).cast<String, dynamic>())),
      subnetworks: map['subnetworks'] == null
          ? null
          : pulumi.Input.decodeList<PacketMirroringMirroredResourcesSubnetwork>(
              map['subnetworks'],
              (value) => PacketMirroringMirroredResourcesSubnetwork.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
