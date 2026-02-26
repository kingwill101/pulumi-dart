// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getManagedFolder.
class GetManagedFolderResult {
  /// The name of the bucket containing this managed folder.
  final String bucket;

  /// The creation time of the managed folder in RFC 3339 format.
  final String createTime;

  /// The kind of item this is. For managed folders, this is always storage#managedFolder.
  final String kind;

  /// The version of the metadata for this managed folder. Used for preconditions and for detecting changes in metadata.
  final String metageneration;

  /// The name of the managed folder. Required if not specified by URL parameter.
  final String name;

  /// The link to this managed folder.
  final String selfLink;

  /// The last update time of the managed folder metadata in RFC 3339 format.
  final String updateTime;

  GetManagedFolderResult({
    required this.bucket,
    required this.createTime,
    required this.kind,
    required this.metageneration,
    required this.name,
    required this.selfLink,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['createTime'] = createTime;
    map['kind'] = kind;
    map['metageneration'] = metageneration;
    map['name'] = name;
    map['selfLink'] = selfLink;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetManagedFolderResult.fromMap(Map<String, dynamic> map) {
    return GetManagedFolderResult(
      bucket: map['bucket'] as String,
      createTime: map['createTime'] as String,
      kind: map['kind'] as String,
      metageneration: map['metageneration'] as String,
      name: map['name'] as String,
      selfLink: map['selfLink'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
