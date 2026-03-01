// ignore_for_file: unused_element, unnecessary_cast


/// FileShareSnapshot properties
class FileShareSnapshotPropertiesResponse {
  /// The initiator of the FileShareSnapshot. This is a user-defined value.
  final String initiatorId;
  /// The metadata
  final Map<String, String>? metadata;
  /// The FileShareSnapshot time in UTC in string representation
  final String snapshotTime;

  /// Creates a new [FileShareSnapshotPropertiesResponse].
  /// [initiatorId] The initiator of the FileShareSnapshot. This is a user-defined value.
  /// [metadata] The metadata
  /// [snapshotTime] The FileShareSnapshot time in UTC in string representation
  FileShareSnapshotPropertiesResponse({
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
      initiatorId: map['initiatorId'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      snapshotTime: map['snapshotTime'] as String,
    );
  }
}

