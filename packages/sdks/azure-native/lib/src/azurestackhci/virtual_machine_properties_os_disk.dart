// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VHD to attach as OS disk
class VirtualMachinePropertiesOsDisk {
  /// Resource ID of the OS disk
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualMachinePropertiesOsDisk].
  /// [id] Resource ID of the OS disk
  VirtualMachinePropertiesOsDisk({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualMachinePropertiesOsDisk.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesOsDisk(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

