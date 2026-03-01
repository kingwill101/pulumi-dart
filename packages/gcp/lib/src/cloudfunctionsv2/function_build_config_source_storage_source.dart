// ignore_for_file: unused_element, unnecessary_cast

class FunctionBuildConfigSourceStorageSource {
  /// Google Cloud Storage bucket containing the source
  final String? bucket;

  /// Google Cloud Storage generation for the object. If the generation
  /// is omitted, the latest generation will be used.
  final int? generation;

  /// Google Cloud Storage object containing the source.
  final String? object;

  /// Creates a new [FunctionBuildConfigSourceStorageSource].
  /// [bucket] Google Cloud Storage bucket containing the source
  /// [generation] Google Cloud Storage generation for the object. If the generation
  /// [object] Google Cloud Storage object containing the source.
  FunctionBuildConfigSourceStorageSource({
    this.bucket,
    this.generation,
    this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'generation': ?generation,
      'object': ?object,
    };
  }

  factory FunctionBuildConfigSourceStorageSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return FunctionBuildConfigSourceStorageSource(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      generation: map['generation'] == null ? null : map['generation'] as int,
      object: map['object'] == null ? null : map['object'] as String,
    );
  }
}
