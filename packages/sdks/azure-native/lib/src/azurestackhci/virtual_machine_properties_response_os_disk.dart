// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VHD to attach as OS disk
class VirtualMachinePropertiesResponseOsDisk {
  /// Resource ID of the OS disk
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualMachinePropertiesResponseOsDisk].
  /// [id] Resource ID of the OS disk
  VirtualMachinePropertiesResponseOsDisk({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualMachinePropertiesResponseOsDisk.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseOsDisk(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

