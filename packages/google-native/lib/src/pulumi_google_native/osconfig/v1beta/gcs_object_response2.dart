// ignore_for_file: unused_element, unnecessary_cast

/// Google Cloud Storage object representation.
class GcsObjectResponse2 {
  /// Bucket of the Google Cloud Storage object.
  final String bucket;

  /// Generation number of the Google Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  final String generationNumber;

  /// Name of the Google Cloud Storage object.
  final String object;

  GcsObjectResponse2({
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

  factory GcsObjectResponse2.fromMap(Map<String, dynamic> map) {
    return GcsObjectResponse2(
      bucket: map['bucket'] as String,
      generationNumber: map['generationNumber'] as String,
      object: map['object'] as String,
    );
  }
}
