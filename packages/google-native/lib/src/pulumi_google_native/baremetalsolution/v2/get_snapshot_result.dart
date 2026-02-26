// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSnapshot.
class GetSnapshotResult {
  /// The creation time of the snapshot.
  final String createTime;

  /// The description of the snapshot.
  final String description;

  /// The name of the snapshot.
  final String name;

  /// The name of the volume which this snapshot belongs to.
  final String storageVolume;

  /// The type of the snapshot which indicates whether it was scheduled or manual/ad-hoc.
  final String type;

  GetSnapshotResult({
    required this.createTime,
    required this.description,
    required this.name,
    required this.storageVolume,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['name'] = name;
    map['storageVolume'] = storageVolume;
    map['type'] = type;
    return map;
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      storageVolume: map['storageVolume'] as String,
      type: map['type'] as String,
    );
  }
}
