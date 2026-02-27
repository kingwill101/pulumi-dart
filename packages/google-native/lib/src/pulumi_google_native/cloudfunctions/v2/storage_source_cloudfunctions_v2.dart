// ignore_for_file: unused_element, unnecessary_cast

/// Location of the source in an archive file in Google Cloud Storage.
class StorageSourceCloudfunctionsV2 {
  /// Google Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final String? bucket;

  /// Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  final String? generation;

  /// Google Cloud Storage object containing the source. This object must be a gzipped archive file (`.tar.gz`) containing source to build.
  final String? object;

  StorageSourceCloudfunctionsV2({
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

  factory StorageSourceCloudfunctionsV2.fromMap(Map<String, dynamic> map) {
    return StorageSourceCloudfunctionsV2(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      generation:
          map['generation'] == null ? null : map['generation'] as String,
      object: map['object'] == null ? null : map['object'] as String,
    );
  }
}
