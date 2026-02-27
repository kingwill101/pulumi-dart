// ignore_for_file: unused_element, unnecessary_cast

class ApplicationDefinition {
  /// JSON application definition. Either this or `s3_location` must be specified.
  final String? content;

  /// Location of the application definition in S3. Either this or `content` must be specified.
  final String? s3Location;

  ApplicationDefinition({
    this.content,
    this.s3Location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final s3LocationValue = s3Location;
    if (s3LocationValue != null) {
      map['s3Location'] = s3LocationValue;
    }
    return map;
  }

  factory ApplicationDefinition.fromMap(Map<String, dynamic> map) {
    return ApplicationDefinition(
      content: map['content'] == null ? null : map['content'] as String,
      s3Location:
          map['s3Location'] == null ? null : map['s3Location'] as String,
    );
  }
}
