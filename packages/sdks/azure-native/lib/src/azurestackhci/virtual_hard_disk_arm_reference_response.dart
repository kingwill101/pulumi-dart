// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a Virtual Hard Disk.
class VirtualHardDiskArmReferenceResponse {
  /// The Azure Resource ID for a Virtual Hard Disk.
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualHardDiskArmReferenceResponse].
  /// [id] The Azure Resource ID for a Virtual Hard Disk.
  VirtualHardDiskArmReferenceResponse({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory VirtualHardDiskArmReferenceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualHardDiskArmReferenceResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
