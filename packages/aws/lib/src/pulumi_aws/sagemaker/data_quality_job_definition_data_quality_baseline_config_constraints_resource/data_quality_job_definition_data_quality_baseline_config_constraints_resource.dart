// ignore_for_file: unused_element, unnecessary_cast

class DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource {
  /// The Amazon S3 URI for the constraints resource.
  final String? s3Uri;

  DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource({
    this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3UriValue = s3Uri;
    if (s3UriValue != null) {
      map['s3Uri'] = s3UriValue;
    }
    return map;
  }

  factory DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource(
      s3Uri: map['s3Uri'] == null ? null : map['s3Uri'] as String,
    );
  }
}
