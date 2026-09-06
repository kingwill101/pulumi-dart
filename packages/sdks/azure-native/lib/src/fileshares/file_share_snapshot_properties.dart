// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FileShareSnapshot properties
class FileShareSnapshotProperties {
  /// The initiator of the FileShareSnapshot. This is a user-defined value.
  final pulumi.Input<String?>? initiatorId;
  /// The metadata
  final pulumi.Input<Map<String, String>?>? metadata;

  /// Creates a new [FileShareSnapshotProperties].
  /// [initiatorId] The initiator of the FileShareSnapshot. This is a user-defined value.
  /// [metadata] The metadata
  const FileShareSnapshotProperties({
    this.initiatorId,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initiatorId': ?initiatorId,
      'metadata': ?metadata,
    };
  }

  factory FileShareSnapshotProperties.fromMap(Map<String, dynamic> map) {
    return FileShareSnapshotProperties(
      initiatorId: (() { final guardedValue = map['initiatorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
