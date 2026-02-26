// ignore_for_file: unused_element, unnecessary_cast

class ThesaurusSourceS3Path {
  /// The name of the S3 bucket that contains the file.
  final String bucket;

  /// The name of the file.
  ///
  /// The following arguments are optional:
  final String key;

  ThesaurusSourceS3Path({
    required this.bucket,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['key'] = key;
    return map;
  }

  factory ThesaurusSourceS3Path.fromMap(Map<String, dynamic> map) {
    return ThesaurusSourceS3Path(
      bucket: map['bucket'] as String,
      key: map['key'] as String,
    );
  }
}
