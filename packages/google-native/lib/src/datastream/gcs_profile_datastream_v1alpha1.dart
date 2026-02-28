// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Storage bucket profile.
class GcsProfileDatastreamV1alpha1 {
  /// The full project and resource path for Cloud Storage bucket including the name.
  final String bucketName;

  /// The root path inside the Cloud Storage bucket.
  final String? rootPath;

  /// Creates a new [GcsProfileDatastreamV1alpha1].
  /// [bucketName] The full project and resource path for Cloud Storage bucket including the name.
  /// [rootPath] The root path inside the Cloud Storage bucket.
  GcsProfileDatastreamV1alpha1({
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

  factory GcsProfileDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return GcsProfileDatastreamV1alpha1(
      bucketName: map['bucketName'] as String,
      rootPath: map['rootPath'] == null ? null : map['rootPath'] as String,
    );
  }
}
