// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Google Cloud Storage volume.
class GCS {
  /// Remote path, either a bucket name or a subdirectory of a bucket, e.g.: bucket_name, bucket_name/subdirectory/
  final String? remotePath;

  GCS({
    this.remotePath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final remotePathValue = remotePath;
    if (remotePathValue != null) {
      map['remotePath'] = remotePathValue;
    }
    return map;
  }

  factory GCS.fromMap(Map<String, dynamic> map) {
    return GCS(
      remotePath:
          map['remotePath'] == null ? null : map['remotePath'] as String,
    );
  }
}
