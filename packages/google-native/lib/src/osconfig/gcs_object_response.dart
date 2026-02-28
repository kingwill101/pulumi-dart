// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Storage object representation.
class GcsObjectResponse {
  /// Bucket of the Cloud Storage object.
  final String bucket;

  /// Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  final String generationNumber;

  /// Name of the Cloud Storage object.
  final String object;

  /// Creates a new [GcsObjectResponse].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generationNumber] Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  /// [object] Name of the Cloud Storage object.
  GcsObjectResponse({
    required this.bucket,
    required this.generationNumber,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['generationNumber'] = generationNumber;
    map['object'] = object;
    return map;
  }

  factory GcsObjectResponse.fromMap(Map<String, dynamic> map) {
    return GcsObjectResponse(
      bucket: map['bucket'] as String,
      generationNumber: map['generationNumber'] as String,
      object: map['object'] as String,
    );
  }
}
