// ignore_for_file: unused_element, unnecessary_cast

/// StorageSource describes the location of the source in an archive file in Google Cloud Storage.
class StorageSource {
  /// Google Cloud Storage bucket containing source (see [Bucket Name Requirements] (https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final String? bucket;

  /// Google Cloud Storage generation for the object.
  final String? generation;

  /// Google Cloud Storage object containing source.
  final String? object;

  /// Creates a new [StorageSource].
  /// [bucket] Google Cloud Storage bucket containing source (see [Bucket Name Requirements] (https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  /// [generation] Google Cloud Storage generation for the object.
  /// [object] Google Cloud Storage object containing source.
  StorageSource({
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

  factory StorageSource.fromMap(Map<String, dynamic> map) {
    return StorageSource(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      generation:
          map['generation'] == null ? null : map['generation'] as String,
      object: map['object'] == null ? null : map['object'] as String,
    );
  }
}
