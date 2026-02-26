// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Storage bucket profile.
class GcsProfileResponse2 {
  /// The full project and resource path for Cloud Storage bucket including the name.
  final String bucketName;

  /// The root path inside the Cloud Storage bucket.
  final String rootPath;

  GcsProfileResponse2({
    required this.bucketName,
    required this.rootPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['rootPath'] = rootPath;
    return map;
  }

  factory GcsProfileResponse2.fromMap(Map<String, dynamic> map) {
    return GcsProfileResponse2(
      bucketName: map['bucketName'] as String,
      rootPath: map['rootPath'] as String,
    );
  }
}
