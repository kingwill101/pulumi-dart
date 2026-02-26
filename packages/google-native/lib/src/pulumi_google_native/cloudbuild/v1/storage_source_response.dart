// ignore_for_file: unused_element, unnecessary_cast

/// Location of the source in an archive file in Cloud Storage.
class StorageSourceResponse {
  /// Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final String bucket;

  /// Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  final String generation;

  /// Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build.
  final String object;

  /// Optional. Option to specify the tool to fetch the source file for the build.
  final String sourceFetcher;

  StorageSourceResponse({
    required this.bucket,
    required this.generation,
    required this.object,
    required this.sourceFetcher,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['generation'] = generation;
    map['object'] = object;
    map['sourceFetcher'] = sourceFetcher;
    return map;
  }

  factory StorageSourceResponse.fromMap(Map<String, dynamic> map) {
    return StorageSourceResponse(
      bucket: map['bucket'] as String,
      generation: map['generation'] as String,
      object: map['object'] as String,
      sourceFetcher: map['sourceFetcher'] as String,
    );
  }
}
