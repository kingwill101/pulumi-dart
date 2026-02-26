// ignore_for_file: unused_element, unnecessary_cast

class EntityRecognizerInputDataConfigAnnotations {
  /// Location of training annotations.
  final String s3Uri;
  final String? testS3Uri;

  EntityRecognizerInputDataConfigAnnotations({
    required this.s3Uri,
    this.testS3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Uri'] = s3Uri;
    final testS3UriValue = testS3Uri;
    if (testS3UriValue != null) {
      map['testS3Uri'] = testS3UriValue;
    }
    return map;
  }

  factory EntityRecognizerInputDataConfigAnnotations.fromMap(
      Map<String, dynamic> map) {
    return EntityRecognizerInputDataConfigAnnotations(
      s3Uri: map['s3Uri'] as String,
      testS3Uri: map['testS3Uri'] == null ? null : map['testS3Uri'] as String,
    );
  }
}
