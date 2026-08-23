// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a VHD in the lab.
class LabVhdResponse {
  /// The URI to the VHD.
  final pulumi.Input<String>? id;

  /// Creates a new [LabVhdResponse].
  /// [id] The URI to the VHD.
  const LabVhdResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory LabVhdResponse.fromMap(Map<String, dynamic> map) {
    return LabVhdResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
