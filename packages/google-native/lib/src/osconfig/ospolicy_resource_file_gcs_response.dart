// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a file available as a Cloud Storage Object.
class OSPolicyResourceFileGcsResponse {
  /// Bucket of the Cloud Storage object.
  final String bucket;

  /// Generation number of the Cloud Storage object.
  final String generation;

  /// Name of the Cloud Storage object.
  final String object;

  /// Creates a new [OSPolicyResourceFileGcsResponse].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object] Name of the Cloud Storage object.
  OSPolicyResourceFileGcsResponse({
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

  factory OSPolicyResourceFileGcsResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileGcsResponse(
      bucket: map['bucket'] as String,
      generation: map['generation'] as String,
      object: map['object'] as String,
    );
  }
}
