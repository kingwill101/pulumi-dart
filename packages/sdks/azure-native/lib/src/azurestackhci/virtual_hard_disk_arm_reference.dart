// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a Virtual Hard Disk.
class VirtualHardDiskArmReference {
  /// The Azure Resource ID for a Virtual Hard Disk.
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualHardDiskArmReference].
  /// [id] The Azure Resource ID for a Virtual Hard Disk.
  VirtualHardDiskArmReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualHardDiskArmReference.fromMap(Map<String, dynamic> map) {
    return VirtualHardDiskArmReference(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

