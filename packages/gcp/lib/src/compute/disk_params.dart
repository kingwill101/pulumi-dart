// ignore_for_file: unused_element, unnecessary_cast


class DiskParams {
  /// Resource manager tags to be bound to the disk. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456.
  final Map<String, String>? resourceManagerTags;

  /// Creates a new [DiskParams].
  /// [resourceManagerTags] Resource manager tags to be bound to the disk. Tag keys and values have the
  DiskParams({
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': ?resourceManagerTags,
    };
  }

  factory DiskParams.fromMap(Map<String, dynamic> map) {
    return DiskParams(
      resourceManagerTags: map['resourceManagerTags'] == null ? null : (map['resourceManagerTags'] as Map).cast<String, String>(),
    );
  }
}

