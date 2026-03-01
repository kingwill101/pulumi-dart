// ignore_for_file: unused_element, unnecessary_cast

/// Google Cloud Storage object representation.
class GcsObjectOsconfigV1beta {
  /// Bucket of the Google Cloud Storage object.
  final String bucket;

  /// Generation number of the Google Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  final String generationNumber;

  /// Name of the Google Cloud Storage object.
  final String object;

  /// Creates a new [GcsObjectOsconfigV1beta].
  /// [bucket] Bucket of the Google Cloud Storage object.
  /// [generationNumber] Generation number of the Google Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  /// [object] Name of the Google Cloud Storage object.
  GcsObjectOsconfigV1beta({
    required this.bucket,
    required this.generationNumber,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generationNumber': generationNumber,
      'object': object,
    };
  }

  factory GcsObjectOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return GcsObjectOsconfigV1beta(
      bucket: map['bucket'] as String,
      generationNumber: map['generationNumber'] as String,
      object: map['object'] as String,
    );
  }
}
