// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a VHD in the lab.
class LabVhdResponse {
  /// The URI to the VHD.
  final pulumi.Input<String>? id;

  /// Creates a new [LabVhdResponse].
  /// [id] The URI to the VHD.
  LabVhdResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory LabVhdResponse.fromMap(Map<String, dynamic> map) {
    return LabVhdResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

