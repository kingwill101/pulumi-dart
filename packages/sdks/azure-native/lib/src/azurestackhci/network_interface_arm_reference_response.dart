// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a Network Interface.
class NetworkInterfaceArmReferenceResponse {
  /// The Azure Resource ID for a Network Interface.
  final pulumi.Input<String>? id;

  /// Creates a new [NetworkInterfaceArmReferenceResponse].
  /// [id] The Azure Resource ID for a Network Interface.
  NetworkInterfaceArmReferenceResponse({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory NetworkInterfaceArmReferenceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInterfaceArmReferenceResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
