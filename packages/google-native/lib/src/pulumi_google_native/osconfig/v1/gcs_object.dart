// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Storage object representation.
class GcsObject {
  /// Bucket of the Cloud Storage object.
  final String bucket;

  /// Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  final String generationNumber;

  /// Name of the Cloud Storage object.
  final String object;

  GcsObject({
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

  factory GcsObject.fromMap(Map<String, dynamic> map) {
    return GcsObject(
      bucket: map['bucket'] as String,
      generationNumber: map['generationNumber'] as String,
      object: map['object'] as String,
    );
  }
}
