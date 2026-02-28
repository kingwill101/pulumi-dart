// ignore_for_file: unused_element, unnecessary_cast

class DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource {
  /// The Amazon S3 URI for the statistics resource.
  final String? s3Uri;

  /// Creates a new [DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource].
  /// [s3Uri] The Amazon S3 URI for the statistics resource.
  DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource({
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

  factory DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource(
      s3Uri: map['s3Uri'] == null ? null : map['s3Uri'] as String,
    );
  }
}
