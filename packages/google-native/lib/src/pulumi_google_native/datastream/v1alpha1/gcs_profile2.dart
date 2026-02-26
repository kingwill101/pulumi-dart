// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Storage bucket profile.
class GcsProfile2 {
  /// The full project and resource path for Cloud Storage bucket including the name.
  final String bucketName;

  /// The root path inside the Cloud Storage bucket.
  final String? rootPath;

  GcsProfile2({
    required this.bucketName,
    this.rootPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final rootPathValue = rootPath;
    if (rootPathValue != null) {
      map['rootPath'] = rootPathValue;
    }
    return map;
  }

  factory GcsProfile2.fromMap(Map<String, dynamic> map) {
    return GcsProfile2(
      bucketName: map['bucketName'] as String,
      rootPath: map['rootPath'] == null ? null : map['rootPath'] as String,
    );
  }
}
