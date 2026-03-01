// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_port_group_vlan_tag.dart';

class NetworkPortGroupVlan {
  /// Configures a VLAN tag group for the specified network port group.
  final List<NetworkPortGroupVlanTag>? tags;
  /// Controls whether the VLAN tag allows trunking for the network port group.
  final String? trunk;

  /// Creates a new [NetworkPortGroupVlan].
  /// [tags] Configures a VLAN tag group for the specified network port group.
  /// [trunk] Controls whether the VLAN tag allows trunking for the network port group.
  NetworkPortGroupVlan({
    this.tags,
    this.trunk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags == null ? null : pulumi.Input.encodeList<NetworkPortGroupVlanTag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'trunk': ?trunk,
    };
  }

  factory NetworkPortGroupVlan.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroupVlan(
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<NetworkPortGroupVlanTag>(map['tags'], (value) => NetworkPortGroupVlanTag.fromMap((value as Map).cast<String, dynamic>())),
      trunk: map['trunk'] == null ? null : map['trunk'] as String,
    );
  }
}

