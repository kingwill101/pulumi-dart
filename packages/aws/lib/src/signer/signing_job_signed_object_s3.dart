// ignore_for_file: unused_element, unnecessary_cast

class SigningJobSignedObjectS3 {
  final String? bucket;

  /// Key name of the object that contains your unsigned code.
  final String? key;

  /// Creates a new [SigningJobSignedObjectS3].
  /// [bucket] Optional.
  /// [key] Key name of the object that contains your unsigned code.
  SigningJobSignedObjectS3({this.bucket, this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': ?bucket, 'key': ?key};
  }

  factory SigningJobSignedObjectS3.fromMap(Map<String, dynamic> map) {
    return SigningJobSignedObjectS3(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}
