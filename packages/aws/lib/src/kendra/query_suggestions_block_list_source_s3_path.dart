// ignore_for_file: unused_element, unnecessary_cast

class QuerySuggestionsBlockListSourceS3Path {
  /// Name of the S3 bucket that contains the file.
  final String bucket;

  /// Name of the file.
  ///
  /// The following arguments are optional:
  final String key;

  /// Creates a new [QuerySuggestionsBlockListSourceS3Path].
  /// [bucket] Name of the S3 bucket that contains the file.
  /// [key] Name of the file.
  QuerySuggestionsBlockListSourceS3Path({
    required this.bucket,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': bucket, 'key': key};
  }

  factory QuerySuggestionsBlockListSourceS3Path.fromMap(
    Map<String, dynamic> map,
  ) {
    return QuerySuggestionsBlockListSourceS3Path(
      bucket: map['bucket'] as String,
      key: map['key'] as String,
    );
  }
}
