// ignore_for_file: unused_element, unnecessary_cast

import 'storage_source_source_fetcher.dart';

/// Location of the source in an archive file in Cloud Storage.
class StorageSource {
  /// Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final String? bucket;

  /// Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  final String? generation;

  /// Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build.
  final String? object;

  /// Optional. Option to specify the tool to fetch the source file for the build.
  final StorageSourceSourceFetcher? sourceFetcher;

  /// Creates a new [StorageSource].
  /// [bucket] Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  /// [generation] Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  /// [object] Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build.
  /// [sourceFetcher] Optional. Option to specify the tool to fetch the source file for the build.
  StorageSource({
    this.bucket,
    this.generation,
    this.object,
    this.sourceFetcher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'generation': ?generation,
      'object': ?object,
      'sourceFetcher': ?sourceFetcher == null ? null : sourceFetcher!.value,
    };
  }

  factory StorageSource.fromMap(Map<String, dynamic> map) {
    return StorageSource(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      generation: map['generation'] == null
          ? null
          : map['generation'] as String,
      object: map['object'] == null ? null : map['object'] as String,
      sourceFetcher: map['sourceFetcher'] == null
          ? null
          : StorageSourceSourceFetcher.fromValue(
              map['sourceFetcher'] as String,
            ),
    );
  }
}
