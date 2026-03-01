// ignore_for_file: unused_element, unnecessary_cast

class DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource {
  /// The Amazon S3 URI for the constraints resource.
  final String? s3Uri;

  /// Creates a new [DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource].
  /// [s3Uri] The Amazon S3 URI for the constraints resource.
  DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource({
    this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'s3Uri': ?s3Uri};
  }

  factory DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource(
      s3Uri: map['s3Uri'] == null ? null : map['s3Uri'] as String,
    );
  }
}
