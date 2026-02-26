// ignore_for_file: unused_element, unnecessary_cast

class EntityRecognizerInputDataConfigDocuments {
  /// Specifies how the input files should be processed.
  /// One of `ONE_DOC_PER_LINE` or `ONE_DOC_PER_FILE`.
  final String? inputFormat;

  /// Location of training documents.
  final String s3Uri;
  final String? testS3Uri;

  EntityRecognizerInputDataConfigDocuments({
    this.inputFormat,
    required this.s3Uri,
    this.testS3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputFormatValue = inputFormat;
    if (inputFormatValue != null) {
      map['inputFormat'] = inputFormatValue;
    }
    map['s3Uri'] = s3Uri;
    final testS3UriValue = testS3Uri;
    if (testS3UriValue != null) {
      map['testS3Uri'] = testS3UriValue;
    }
    return map;
  }

  factory EntityRecognizerInputDataConfigDocuments.fromMap(
      Map<String, dynamic> map) {
    return EntityRecognizerInputDataConfigDocuments(
      inputFormat:
          map['inputFormat'] == null ? null : map['inputFormat'] as String,
      s3Uri: map['s3Uri'] as String,
      testS3Uri: map['testS3Uri'] == null ? null : map['testS3Uri'] as String,
    );
  }
}
