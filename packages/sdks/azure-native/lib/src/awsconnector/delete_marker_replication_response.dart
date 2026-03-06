// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DeleteMarkerReplication
class DeleteMarkerReplicationResponse {
  /// Indicates whether to replicate delete markers. Disabled by default.
  final pulumi.Input<String>? status;

  /// Creates a new [DeleteMarkerReplicationResponse].
  /// [status] Indicates whether to replicate delete markers. Disabled by default.
  const DeleteMarkerReplicationResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory DeleteMarkerReplicationResponse.fromMap(Map<String, dynamic> map) {
    return DeleteMarkerReplicationResponse(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

