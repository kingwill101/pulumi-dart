// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachinePropertiesNetworkInterfaces {
  /// ID - Resource Id of the network interface
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualMachinePropertiesNetworkInterfaces].
  /// [id] ID - Resource Id of the network interface
  const VirtualMachinePropertiesNetworkInterfaces({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualMachinePropertiesNetworkInterfaces.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesNetworkInterfaces(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
