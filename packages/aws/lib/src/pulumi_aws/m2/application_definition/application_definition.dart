// ignore_for_file: unused_element, unnecessary_cast

class ApplicationDefinition {
  /// JSON application definition. Either this or <span pulumi-lang-nodejs="`s3Location`" pulumi-lang-dotnet="`S3Location`" pulumi-lang-go="`s3Location`" pulumi-lang-python="`s3_location`" pulumi-lang-yaml="`s3Location`" pulumi-lang-java="`s3Location`">`s3_location`</span> must be specified.
  final String? content;

  /// Location of the application definition in S3. Either this or <span pulumi-lang-nodejs="`content`" pulumi-lang-dotnet="`Content`" pulumi-lang-go="`content`" pulumi-lang-python="`content`" pulumi-lang-yaml="`content`" pulumi-lang-java="`content`">`content`</span> must be specified.
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
