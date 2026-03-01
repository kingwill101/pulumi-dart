// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Storage bucket profile.
class GcsProfileResponseDatastreamV1alpha1 {
  /// The full project and resource path for Cloud Storage bucket including the name.
  final String bucketName;

  /// The root path inside the Cloud Storage bucket.
  final String rootPath;

  /// Creates a new [GcsProfileResponseDatastreamV1alpha1].
  /// [bucketName] The full project and resource path for Cloud Storage bucket including the name.
  /// [rootPath] The root path inside the Cloud Storage bucket.
  GcsProfileResponseDatastreamV1alpha1({
    required this.bucketName,
    required this.rootPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucketName': bucketName, 'rootPath': rootPath};
  }

  factory GcsProfileResponseDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return GcsProfileResponseDatastreamV1alpha1(
      bucketName: map['bucketName'] as String,
      rootPath: map['rootPath'] as String,
    );
  }
}
