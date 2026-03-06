// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DeleteMarkerReplication
class DeleteMarkerReplication {
  /// Indicates whether to replicate delete markers. Disabled by default.
  final pulumi.Input<String>? status;

  /// Creates a new [DeleteMarkerReplication].
  /// [status] Indicates whether to replicate delete markers. Disabled by default.
  const DeleteMarkerReplication({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory DeleteMarkerReplication.fromMap(Map<String, dynamic> map) {
    return DeleteMarkerReplication(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

