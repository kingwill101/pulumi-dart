// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a network interface reference.
class NetworkInterfaceReferenceResponse {
  /// Specify what happens to the network interface when the VM is deleted
  final pulumi.Input<String>? deleteOption;
  /// Resource Id
  final pulumi.Input<String>? id;
  /// Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  final pulumi.Input<bool>? primary;

  /// Creates a new [NetworkInterfaceReferenceResponse].
  /// [deleteOption] Specify what happens to the network interface when the VM is deleted
  /// [id] Resource Id
  /// [primary] Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  NetworkInterfaceReferenceResponse({
    this.deleteOption,
    this.id,
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOption': ?deleteOption,
      'id': ?id,
      'primary': ?primary,
    };
  }

  factory NetworkInterfaceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceReferenceResponse(
      deleteOption: map['deleteOption'] == null ? null : (map['deleteOption'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      primary: map['primary'] == null ? null : (map['primary'] as bool).input(),
    );
  }
}

