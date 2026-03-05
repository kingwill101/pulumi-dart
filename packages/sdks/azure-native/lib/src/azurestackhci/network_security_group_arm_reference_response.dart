// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a Network Security Group.
class NetworkSecurityGroupArmReferenceResponse {
  /// The Azure Resource ID for a Network Security Group.
  final pulumi.Input<String>? id;

  /// Creates a new [NetworkSecurityGroupArmReferenceResponse].
  /// [id] The Azure Resource ID for a Network Security Group.
  NetworkSecurityGroupArmReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory NetworkSecurityGroupArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupArmReferenceResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

