// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a HorizonDB replica.
class HorizonDbReplicaProperties {
  /// The availability zone of the replica.
  final pulumi.Input<String>? availabilityZone;
  /// Role of the replica.
  final pulumi.Input<String>? role;

  /// Creates a new [HorizonDbReplicaProperties].
  /// [availabilityZone] The availability zone of the replica.
  /// [role] Role of the replica.
  const HorizonDbReplicaProperties({
    this.availabilityZone,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'role': ?role,
    };
  }

  factory HorizonDbReplicaProperties.fromMap(Map<String, dynamic> map) {
    return HorizonDbReplicaProperties(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
