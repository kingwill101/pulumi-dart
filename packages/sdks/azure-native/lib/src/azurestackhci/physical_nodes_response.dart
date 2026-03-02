// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The PhysicalNodes of a cluster.
class PhysicalNodesResponse {
  /// The IPv4 address assigned to each physical server on your Azure Stack HCI cluster.
  final pulumi.Input<String>? ipv4Address;
  /// NETBIOS name of each physical server on your Azure Stack HCI cluster.
  final pulumi.Input<String>? name;

  /// Creates a new [PhysicalNodesResponse].
  /// [ipv4Address] The IPv4 address assigned to each physical server on your Azure Stack HCI cluster.
  /// [name] NETBIOS name of each physical server on your Azure Stack HCI cluster.
  PhysicalNodesResponse({
    this.ipv4Address,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Address': ?ipv4Address,
      'name': ?name,
    };
  }

  factory PhysicalNodesResponse.fromMap(Map<String, dynamic> map) {
    return PhysicalNodesResponse(
      ipv4Address: map['ipv4Address'] == null ? null : (map['ipv4Address']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

