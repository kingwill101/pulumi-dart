// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a Network Security Group.
class NetworkSecurityGroupArmReference {
  /// The Azure Resource ID for a Network Security Group.
  final pulumi.Input<String?>? id;

  /// Creates a new [NetworkSecurityGroupArmReference].
  /// [id] The Azure Resource ID for a Network Security Group.
  const NetworkSecurityGroupArmReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory NetworkSecurityGroupArmReference.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupArmReference(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
