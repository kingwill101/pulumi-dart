// ignore_for_file: unused_element, unnecessary_cast


/// Cloud Storage bucket profile.
class GcsProfileResponse {
  /// The Cloud Storage bucket name.
  final String bucket;
  /// The root path inside the Cloud Storage bucket.
  final String rootPath;

  /// Creates a new [GcsProfileResponse].
  /// [bucket] The Cloud Storage bucket name.
  /// [rootPath] The root path inside the Cloud Storage bucket.
  GcsProfileResponse({
    required this.bucket,
    required this.rootPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'rootPath': rootPath,
    };
  }

  factory GcsProfileResponse.fromMap(Map<String, dynamic> map) {
    return GcsProfileResponse(
      bucket: map['bucket'] as String,
      rootPath: map['rootPath'] as String,
    );
  }
}

