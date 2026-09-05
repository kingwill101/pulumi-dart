// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_inference_specification_container_model_data_source_s3_data_source.dart';

class AlgorithmInferenceSpecificationContainerModelDataSource {
  /// S3-backed model data source. See Model Data Source S3 Data Source.
  final pulumi.Input<AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSource?>? s3DataSource;

  /// Creates a new [AlgorithmInferenceSpecificationContainerModelDataSource].
  /// [s3DataSource] S3-backed model data source. See Model Data Source S3 Data Source.
  const AlgorithmInferenceSpecificationContainerModelDataSource({
    this.s3DataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3DataSource': ?pulumi.Input.mapOptionalInputValue<AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSource, Map<String, dynamic>>(s3DataSource, (value) => value.toMap()),
    };
  }

  factory AlgorithmInferenceSpecificationContainerModelDataSource.fromMap(Map<String, dynamic> map) {
    return AlgorithmInferenceSpecificationContainerModelDataSource(
      s3DataSource: (() { final guardedValue = map['s3DataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
