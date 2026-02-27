// ignore_for_file: unused_element, unnecessary_cast

/// StorageSource describes the location of the source in an archive file in Google Cloud Storage.
class StorageSourceContaineranalysisV1alpha1 {
  /// Google Cloud Storage bucket containing source (see [Bucket Name Requirements] (https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final String? bucket;

  /// Google Cloud Storage generation for the object.
  final String? generation;

  /// Google Cloud Storage object containing source.
  final String? object;

  StorageSourceContaineranalysisV1alpha1({
    this.bucket,
    this.generation,
    this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final generationValue = generation;
    if (generationValue != null) {
      map['generation'] = generationValue;
    }
    final objectValue = object;
    if (objectValue != null) {
      map['object'] = objectValue;
    }
    return map;
  }

  factory StorageSourceContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return StorageSourceContaineranalysisV1alpha1(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      generation:
          map['generation'] == null ? null : map['generation'] as String,
      object: map['object'] == null ? null : map['object'] as String,
    );
  }
}
