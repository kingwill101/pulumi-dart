// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionBuildConfigSourceStorageSource {
  /// Google Cloud Storage bucket containing the source
  final String bucket;

  /// Google Cloud Storage generation for the object. If the generation
  /// is omitted, the latest generation will be used.
  final int generation;

  /// Google Cloud Storage object containing the source.
  final String object;

  /// Creates a new [GetFunctionBuildConfigSourceStorageSource].
  /// [bucket] Google Cloud Storage bucket containing the source
  /// [generation] Google Cloud Storage generation for the object. If the generation
  /// [object] Google Cloud Storage object containing the source.
  GetFunctionBuildConfigSourceStorageSource({
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

  factory GetFunctionBuildConfigSourceStorageSource.fromMap(
      Map<String, dynamic> map) {
    return GetFunctionBuildConfigSourceStorageSource(
      bucket: map['bucket'] as String,
      generation: map['generation'] as int,
      object: map['object'] as String,
    );
  }
}
