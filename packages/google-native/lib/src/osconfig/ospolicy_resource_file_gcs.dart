// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a file available as a Cloud Storage Object.
class OSPolicyResourceFileGcs {
  /// Bucket of the Cloud Storage object.
  final String bucket;

  /// Generation number of the Cloud Storage object.
  final String? generation;

  /// Name of the Cloud Storage object.
  final String object;

  /// Creates a new [OSPolicyResourceFileGcs].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object] Name of the Cloud Storage object.
  OSPolicyResourceFileGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final generationValue = generation;
    if (generationValue != null) {
      map['generation'] = generationValue;
    }
    map['object'] = object;
    return map;
  }

  factory OSPolicyResourceFileGcs.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileGcs(
      bucket: map['bucket'] as String,
      generation:
          map['generation'] == null ? null : map['generation'] as String,
      object: map['object'] as String,
    );
  }
}
