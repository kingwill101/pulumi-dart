// ignore_for_file: unused_element, unnecessary_cast

class TriggerBuildSourceStorageSource {
  /// Google Cloud Storage bucket containing the source.
  final String bucket;

  /// Google Cloud Storage generation for the object.
  /// If the generation is omitted, the latest generation will be used
  final String? generation;

  /// Google Cloud Storage object containing the source.
  /// This object must be a gzipped archive file (.tar.gz) containing source to build.
  final String object;

  /// Creates a new [TriggerBuildSourceStorageSource].
  /// [bucket] Google Cloud Storage bucket containing the source.
  /// [generation] Google Cloud Storage generation for the object.
  /// [object] Google Cloud Storage object containing the source.
  TriggerBuildSourceStorageSource({
    required this.bucket,
    this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'object': object,
    };
  }

  factory TriggerBuildSourceStorageSource.fromMap(Map<String, dynamic> map) {
    return TriggerBuildSourceStorageSource(
      bucket: map['bucket'] as String,
      generation: map['generation'] == null
          ? null
          : map['generation'] as String,
      object: map['object'] as String,
    );
  }
}
