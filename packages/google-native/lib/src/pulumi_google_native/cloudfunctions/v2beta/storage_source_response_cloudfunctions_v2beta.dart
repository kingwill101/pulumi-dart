// ignore_for_file: unused_element, unnecessary_cast

/// Location of the source in an archive file in Google Cloud Storage.
class StorageSourceResponseCloudfunctionsV2beta {
  /// Google Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final String bucket;

  /// Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  final String generation;

  /// Google Cloud Storage object containing the source. This object must be a gzipped archive file (`.tar.gz`) containing source to build.
  final String object;

  StorageSourceResponseCloudfunctionsV2beta({
    required this.bucket,
    required this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['generation'] = generation;
    map['object'] = object;
    return map;
  }

  factory StorageSourceResponseCloudfunctionsV2beta.fromMap(
      Map<String, dynamic> map) {
    return StorageSourceResponseCloudfunctionsV2beta(
      bucket: map['bucket'] as String,
      generation: map['generation'] as String,
      object: map['object'] as String,
    );
  }
}
