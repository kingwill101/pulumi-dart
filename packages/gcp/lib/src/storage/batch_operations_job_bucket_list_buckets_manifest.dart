// ignore_for_file: unused_element, unnecessary_cast

class BatchOperationsJobBucketListBucketsManifest {
  /// Specifies objects in a manifest file.
  final String? manifestLocation;

  /// Creates a new [BatchOperationsJobBucketListBucketsManifest].
  /// [manifestLocation] Specifies objects in a manifest file.
  BatchOperationsJobBucketListBucketsManifest({
    this.manifestLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final manifestLocationValue = manifestLocation;
    if (manifestLocationValue != null) {
      map['manifestLocation'] = manifestLocationValue;
    }
    return map;
  }

  factory BatchOperationsJobBucketListBucketsManifest.fromMap(
      Map<String, dynamic> map) {
    return BatchOperationsJobBucketListBucketsManifest(
      manifestLocation: map['manifestLocation'] == null
          ? null
          : map['manifestLocation'] as String,
    );
  }
}
