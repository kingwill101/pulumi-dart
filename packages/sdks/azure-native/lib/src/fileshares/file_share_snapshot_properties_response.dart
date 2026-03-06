// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FileShareSnapshot properties
class FileShareSnapshotPropertiesResponse {
  /// The initiator of the FileShareSnapshot. This is a user-defined value.
  final pulumi.Input<String> initiatorId;
  /// The metadata
  final pulumi.Input<Map<String, String>>? metadata;
  /// The FileShareSnapshot time in UTC in string representation
  final pulumi.Input<String> snapshotTime;

  /// Creates a new [FileShareSnapshotPropertiesResponse].
  /// [initiatorId] The initiator of the FileShareSnapshot. This is a user-defined value.
  /// [metadata] The metadata
  /// [snapshotTime] The FileShareSnapshot time in UTC in string representation
  const FileShareSnapshotPropertiesResponse({
    required this.initiatorId,
    this.metadata,
    required this.snapshotTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initiatorId': initiatorId,
      'metadata': ?metadata,
      'snapshotTime': snapshotTime,
    };
  }

  factory FileShareSnapshotPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FileShareSnapshotPropertiesResponse(
      initiatorId: pulumi.Input.fromValue(map['initiatorId'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      snapshotTime: pulumi.Input.fromValue(map['snapshotTime'] as String),
    );
  }
}

