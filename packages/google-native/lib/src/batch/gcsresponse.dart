// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Google Cloud Storage volume.
class GCSResponse {
  /// Remote path, either a bucket name or a subdirectory of a bucket, e.g.: bucket_name, bucket_name/subdirectory/
  final String remotePath;

  /// Creates a new [GCSResponse].
  /// [remotePath] Remote path, either a bucket name or a subdirectory of a bucket, e.g.: bucket_name, bucket_name/subdirectory/
  GCSResponse({
    required this.remotePath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['remotePath'] = remotePath;
    return map;
  }

  factory GCSResponse.fromMap(Map<String, dynamic> map) {
    return GCSResponse(
      remotePath: map['remotePath'] as String,
    );
  }
}
