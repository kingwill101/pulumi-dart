// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a network interface reference properties.
class NetworkInterfaceReferenceProperties {
  /// Specify what happens to the network interface when the VM is deleted
  final pulumi.Input<String>? deleteOption;
  /// Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  final pulumi.Input<bool>? primary;

  /// Creates a new [NetworkInterfaceReferenceProperties].
  /// [deleteOption] Specify what happens to the network interface when the VM is deleted
  /// [primary] Specifies the primary network interface in case the virtual machine has more than 1 network interface.
  const NetworkInterfaceReferenceProperties({
    this.deleteOption,
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOption': ?deleteOption,
      'primary': ?primary,
    };
  }

  factory NetworkInterfaceReferenceProperties.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceReferenceProperties(
      deleteOption: (() { final guardedValue = map['deleteOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
