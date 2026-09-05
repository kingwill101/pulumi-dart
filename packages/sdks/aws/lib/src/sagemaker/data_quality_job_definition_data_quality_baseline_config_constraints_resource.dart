// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource {
  /// The Amazon S3 URI for the constraints resource.
  final pulumi.Input<String?>? s3Uri;

  /// Creates a new [DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource].
  /// [s3Uri] The Amazon S3 URI for the constraints resource.
  const DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource({
    this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': ?s3Uri,
    };
  }

  factory DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource(
      s3Uri: (() { final guardedValue = map['s3Uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
