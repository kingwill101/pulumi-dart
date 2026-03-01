// ignore_for_file: unused_element, unnecessary_cast

class ThesaurusSourceS3Path {
  /// The name of the S3 bucket that contains the file.
  final String bucket;

  /// The name of the file.
  ///
  /// The following arguments are optional:
  final String key;

  /// Creates a new [ThesaurusSourceS3Path].
  /// [bucket] The name of the S3 bucket that contains the file.
  /// [key] The name of the file.
  ThesaurusSourceS3Path({required this.bucket, required this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': bucket, 'key': key};
  }

  factory ThesaurusSourceS3Path.fromMap(Map<String, dynamic> map) {
    return ThesaurusSourceS3Path(
      bucket: map['bucket'] as String,
      key: map['key'] as String,
    );
  }
}
