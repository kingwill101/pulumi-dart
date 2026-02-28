// ignore_for_file: unused_element, unnecessary_cast


/// Specifies a file available as a Cloud Storage Object.
class OSPolicyResourceFileGcsOsconfigV1alpha {
  /// Bucket of the Cloud Storage object.
  final String bucket;
  /// Generation number of the Cloud Storage object.
  final String? generation;
  /// Name of the Cloud Storage object.
  final String object;

  /// Creates a new [OSPolicyResourceFileGcsOsconfigV1alpha].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object] Name of the Cloud Storage object.
  OSPolicyResourceFileGcsOsconfigV1alpha({
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

  factory OSPolicyResourceFileGcsOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileGcsOsconfigV1alpha(
      bucket: map['bucket'] as String,
      generation: map['generation'] == null ? null : map['generation'] as String,
      object: map['object'] as String,
    );
  }
}

