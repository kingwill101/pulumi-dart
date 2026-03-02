// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource {
  /// The Amazon S3 URI for the statistics resource.
  final pulumi.Input<String>? s3Uri;

  /// Creates a new [DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource].
  /// [s3Uri] The Amazon S3 URI for the statistics resource.
  DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource({
    this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': ?s3Uri,
    };
  }

  factory DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource(
      s3Uri: map['s3Uri'] == null ? null : (map['s3Uri'] as String).input(),
    );
  }
}

