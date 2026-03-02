// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachinePropertiesResponseDataDisks {
  /// Resource ID of the data disk
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualMachinePropertiesResponseDataDisks].
  /// [id] Resource ID of the data disk
  VirtualMachinePropertiesResponseDataDisks({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualMachinePropertiesResponseDataDisks.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseDataDisks(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

