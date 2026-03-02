// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a Network Interface.
class NetworkInterfaceArmReference {
  /// The Azure Resource ID for a Network Interface.
  final pulumi.Input<String>? id;

  /// Creates a new [NetworkInterfaceArmReference].
  /// [id] The Azure Resource ID for a Network Interface.
  NetworkInterfaceArmReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory NetworkInterfaceArmReference.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceArmReference(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

