// ignore_for_file: unused_element, unnecessary_cast


class SigningJobSourceS3 {
  final String bucket;
  /// Key name of the object that contains your unsigned code.
  final String key;
  /// Version of your source image in your version enabled S3 bucket.
  final String version;

  /// Creates a new [SigningJobSourceS3].
  /// [bucket] Required.
  /// [key] Key name of the object that contains your unsigned code.
  /// [version] Version of your source image in your version enabled S3 bucket.
  SigningJobSourceS3({
    required this.bucket,
    required this.key,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'key': key,
      'version': version,
    };
  }

  factory SigningJobSourceS3.fromMap(Map<String, dynamic> map) {
    return SigningJobSourceS3(
      bucket: map['bucket'] as String,
      key: map['key'] as String,
      version: map['version'] as String,
    );
  }
}

