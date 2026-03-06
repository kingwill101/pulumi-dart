// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNetworksNewVpdInfoVpdSubnet {
  /// Subnet cidr
  final pulumi.Input<String>? subnetCidr;
  /// Subnet Type
  final pulumi.Input<String>? subnetType;
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ClusterNetworksNewVpdInfoVpdSubnet].
  /// [subnetCidr] Subnet cidr
  /// [subnetType] Subnet Type
  /// [zoneId] Optional.
  const ClusterNetworksNewVpdInfoVpdSubnet({
    this.subnetCidr,
    this.subnetType,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetCidr': ?subnetCidr,
      'subnetType': ?subnetType,
      'zoneId': ?zoneId,
    };
  }

  factory ClusterNetworksNewVpdInfoVpdSubnet.fromMap(Map<String, dynamic> map) {
    return ClusterNetworksNewVpdInfoVpdSubnet(
      subnetCidr: (() { final guardedValue = map['subnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetType: (() { final guardedValue = map['subnetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

