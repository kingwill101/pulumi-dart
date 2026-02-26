// ignore_for_file: unused_element, unnecessary_cast

/// StorageSource describes the location of the source in an archive file in Google Cloud Storage.
class StorageSourceResponse5 {
  /// Google Cloud Storage bucket containing source (see [Bucket Name Requirements] (https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final String bucket;

  /// Google Cloud Storage generation for the object.
  final String generation;

  /// Google Cloud Storage object containing source.
  final String object;

  StorageSourceResponse5({
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

  factory StorageSourceResponse5.fromMap(Map<String, dynamic> map) {
    return StorageSourceResponse5(
      bucket: map['bucket'] as String,
      generation: map['generation'] as String,
      object: map['object'] as String,
    );
  }
}
