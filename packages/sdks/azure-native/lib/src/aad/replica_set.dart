// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Replica Set Definition
class ReplicaSet {
  /// Virtual network location
  final pulumi.Input<String>? location;
  /// The name of the virtual network that Domain Services will be deployed on. The id of the subnet that Domain Services will be deployed on. /virtualNetwork/vnetName/subnets/subnetName.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [ReplicaSet].
  /// [location] Virtual network location
  /// [subnetId] The name of the virtual network that Domain Services will be deployed on. The id of the subnet that Domain Services will be deployed on. /virtualNetwork/vnetName/subnets/subnetName.
  const ReplicaSet({
    this.location,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'subnetId': ?subnetId,
    };
  }

  factory ReplicaSet.fromMap(Map<String, dynamic> map) {
    return ReplicaSet(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
