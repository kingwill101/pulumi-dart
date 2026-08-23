// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a HorizonDB replica.
class HorizonDbReplicaPropertiesResponse {
  /// The availability zone of the replica.
  final pulumi.Input<String>? availabilityZone;
  /// The fully qualified domain name of the replica.
  final pulumi.Input<String> fullyQualifiedDomainName;
  /// The provisioning state of the replica.
  final pulumi.Input<String> provisioningState;
  /// Role of the replica.
  final pulumi.Input<String>? role;
  /// Current status of the replica.
  final pulumi.Input<String> status;

  /// Creates a new [HorizonDbReplicaPropertiesResponse].
  /// [availabilityZone] The availability zone of the replica.
  /// [fullyQualifiedDomainName] The fully qualified domain name of the replica.
  /// [provisioningState] The provisioning state of the replica.
  /// [role] Role of the replica.
  /// [status] Current status of the replica.
  const HorizonDbReplicaPropertiesResponse({
    this.availabilityZone,
    required this.fullyQualifiedDomainName,
    required this.provisioningState,
    this.role,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'fullyQualifiedDomainName': fullyQualifiedDomainName,
      'provisioningState': provisioningState,
      'role': ?role,
      'status': status,
    };
  }

  factory HorizonDbReplicaPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HorizonDbReplicaPropertiesResponse(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullyQualifiedDomainName: pulumi.Input.fromValue(map['fullyQualifiedDomainName'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
