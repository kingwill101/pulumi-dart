// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a network interface reference.
class NetworkInterfaceReference {
  /// Specify what happens to the network interface when the VM is deleted
  final pulumi.Input<String>? deleteOption;
  /// Resource Id
  final pulumi.Input<String>? id;
  /// Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  final pulumi.Input<bool>? primary;

  /// Creates a new [NetworkInterfaceReference].
  /// [deleteOption] Specify what happens to the network interface when the VM is deleted
  /// [id] Resource Id
  /// [primary] Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  const NetworkInterfaceReference({
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

  factory NetworkInterfaceReference.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceReference(
      deleteOption: (() { final guardedValue = map['deleteOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

