// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNode {
  final pulumi.Input<String>? address;
  final pulumi.Input<String>? availabilityZone;
  final pulumi.Input<String>? id;

  /// The port used by the configuration endpoint
  final pulumi.Input<int>? port;

  /// Creates a new [ClusterNode].
  /// [address] Optional.
  /// [availabilityZone] Optional.
  /// [id] Optional.
  /// [port] The port used by the configuration endpoint
  ClusterNode({this.address, this.availabilityZone, this.id, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'availabilityZone': ?availabilityZone,
      'id': ?id,
      'port': ?port,
    };
  }

  factory ClusterNode.fromMap(Map<String, dynamic> map) {
    return ClusterNode(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
