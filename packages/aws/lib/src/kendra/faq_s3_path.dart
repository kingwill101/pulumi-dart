// ignore_for_file: unused_element, unnecessary_cast

class FaqS3Path {
  /// The name of the S3 bucket that contains the file.
  final String bucket;

  /// The name of the file.
  ///
  /// The following arguments are optional:
  final String key;

  /// Creates a new [FaqS3Path].
  /// [bucket] The name of the S3 bucket that contains the file.
  /// [key] The name of the file.
  FaqS3Path({
    required this.bucket,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['key'] = key;
    return map;
  }

  factory FaqS3Path.fromMap(Map<String, dynamic> map) {
    return FaqS3Path(
      bucket: map['bucket'] as String,
      key: map['key'] as String,
    );
  }
}
