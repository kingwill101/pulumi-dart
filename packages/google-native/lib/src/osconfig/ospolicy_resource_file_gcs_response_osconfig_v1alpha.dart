// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a file available as a Cloud Storage Object.
class OSPolicyResourceFileGcsResponseOsconfigV1alpha {
  /// Bucket of the Cloud Storage object.
  final String bucket;

  /// Generation number of the Cloud Storage object.
  final String generation;

  /// Name of the Cloud Storage object.
  final String object;

  /// Creates a new [OSPolicyResourceFileGcsResponseOsconfigV1alpha].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object] Name of the Cloud Storage object.
  OSPolicyResourceFileGcsResponseOsconfigV1alpha({
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

  factory OSPolicyResourceFileGcsResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceFileGcsResponseOsconfigV1alpha(
      bucket: map['bucket'] as String,
      generation: map['generation'] as String,
      object: map['object'] as String,
    );
  }
}
