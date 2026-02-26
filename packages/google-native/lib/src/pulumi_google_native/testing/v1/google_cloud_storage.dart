// ignore_for_file: unused_element, unnecessary_cast

/// A storage location within Google cloud storage (GCS).
class GoogleCloudStorage {
  /// The path to a directory in GCS that will eventually contain the results for this test. The requesting user must have write access on the bucket in the supplied path.
  final String gcsPath;

  GoogleCloudStorage({
    required this.gcsPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcsPath'] = gcsPath;
    return map;
  }

  factory GoogleCloudStorage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudStorage(
      gcsPath: map['gcsPath'] as String,
    );
  }
}
