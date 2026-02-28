// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Storage bucket profile.
class GcsProfile {
  /// The Cloud Storage bucket name.
  final String bucket;

  /// The root path inside the Cloud Storage bucket.
  final String? rootPath;

  /// Creates a new [GcsProfile].
  /// [bucket] The Cloud Storage bucket name.
  /// [rootPath] The root path inside the Cloud Storage bucket.
  GcsProfile({
    required this.bucket,
    this.rootPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final rootPathValue = rootPath;
    if (rootPathValue != null) {
      map['rootPath'] = rootPathValue;
    }
    return map;
  }

  factory GcsProfile.fromMap(Map<String, dynamic> map) {
    return GcsProfile(
      bucket: map['bucket'] as String,
      rootPath: map['rootPath'] == null ? null : map['rootPath'] as String,
    );
  }
}
