// ignore_for_file: unused_element, unnecessary_cast

class GetSigningJobSignedObjectS3 {
  final String bucket;
  final String key;

  /// Creates a new [GetSigningJobSignedObjectS3].
  /// [bucket] Required.
  /// [key] Required.
  GetSigningJobSignedObjectS3({
    required this.bucket,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['key'] = key;
    return map;
  }

  factory GetSigningJobSignedObjectS3.fromMap(Map<String, dynamic> map) {
    return GetSigningJobSignedObjectS3(
      bucket: map['bucket'] as String,
      key: map['key'] as String,
    );
  }
}
