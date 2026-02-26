// ignore_for_file: unused_element, unnecessary_cast

/// Location of the source manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
class StorageSourceManifestResponse {
  /// Cloud Storage bucket containing the source manifest (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final String bucket;

  /// Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  final String generation;

  /// Cloud Storage object containing the source manifest. This object must be a JSON file.
  final String object;

  StorageSourceManifestResponse({
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

  factory StorageSourceManifestResponse.fromMap(Map<String, dynamic> map) {
    return StorageSourceManifestResponse(
      bucket: map['bucket'] as String,
      generation: map['generation'] as String,
      object: map['object'] as String,
    );
  }
}
