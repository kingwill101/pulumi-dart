// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachinePropertiesResponseNetworkInterfaces {
  /// ID - Resource Id of the network interface
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualMachinePropertiesResponseNetworkInterfaces].
  /// [id] ID - Resource Id of the network interface
  VirtualMachinePropertiesResponseNetworkInterfaces({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualMachinePropertiesResponseNetworkInterfaces.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseNetworkInterfaces(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

