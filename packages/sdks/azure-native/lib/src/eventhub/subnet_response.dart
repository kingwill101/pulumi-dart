// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties supplied for Subnet
class SubnetResponse {
  /// Resource ID of Virtual Network Subnet
  final pulumi.Input<String>? id;

  /// Creates a new [SubnetResponse].
  /// [id] Resource ID of Virtual Network Subnet
  const SubnetResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubnetResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
