// ignore_for_file: unused_element, unnecessary_cast

class GetQuerySuggestionsBlockListSourceS3Path {
  /// Name of the S3 bucket that contains the file.
  final String bucket;

  /// Name of the file.
  final String key;

  /// Creates a new [GetQuerySuggestionsBlockListSourceS3Path].
  /// [bucket] Name of the S3 bucket that contains the file.
  /// [key] Name of the file.
  GetQuerySuggestionsBlockListSourceS3Path({
    required this.bucket,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['key'] = key;
    return map;
  }

  factory GetQuerySuggestionsBlockListSourceS3Path.fromMap(
      Map<String, dynamic> map) {
    return GetQuerySuggestionsBlockListSourceS3Path(
      bucket: map['bucket'] as String,
      key: map['key'] as String,
    );
  }
}
