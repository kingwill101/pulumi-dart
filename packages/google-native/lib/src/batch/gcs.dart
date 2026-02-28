// ignore_for_file: unused_element, unnecessary_cast


/// Represents a Google Cloud Storage volume.
class GCS {
  /// Remote path, either a bucket name or a subdirectory of a bucket, e.g.: bucket_name, bucket_name/subdirectory/
  final String? remotePath;

  /// Creates a new [GCS].
  /// [remotePath] Remote path, either a bucket name or a subdirectory of a bucket, e.g.: bucket_name, bucket_name/subdirectory/
  GCS({
    this.remotePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remotePath': ?remotePath,
    };
  }

  factory GCS.fromMap(Map<String, dynamic> map) {
    return GCS(
      remotePath: map['remotePath'] == null ? null : map['remotePath'] as String,
    );
  }
}

