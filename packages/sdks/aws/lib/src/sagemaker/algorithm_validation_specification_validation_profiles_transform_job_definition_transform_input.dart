// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_validation_specification_validation_profiles_transform_job_definition_transform_input_data_source.dart';

class AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInput {
  /// Compression type of the input data. Allowed values are: `None` and `Gzip`.
  final pulumi.Input<String?>? compressionType;
  /// MIME type of the input data.
  final pulumi.Input<String?>? contentType;
  /// Data source for the transform job. See Transform Job Data Source.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSource> dataSource;
  /// Method used to split the transform input. Allowed values are: `None`, `Line`, `RecordIO`, and `TFRecord`.
  final pulumi.Input<String?>? splitType;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInput].
  /// [compressionType] Compression type of the input data. Allowed values are: `None` and `Gzip`.
  /// [contentType] MIME type of the input data.
  /// [dataSource] Data source for the transform job. See Transform Job Data Source.
  /// [splitType] Method used to split the transform input. Allowed values are: `None`, `Line`, `RecordIO`, and `TFRecord`.
  const AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInput({
    this.compressionType,
    this.contentType,
    required this.dataSource,
    this.splitType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionType': ?compressionType,
      'contentType': ?contentType,
      'dataSource': pulumi.Input.mapInputValue<AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSource, Map<String, dynamic>>(dataSource, (value) => value.toMap()),
      'splitType': ?splitType,
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInput.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInput(
      compressionType: (() { final guardedValue = map['compressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSource.fromMap((map['dataSource']! as Map).cast<String, dynamic>())),
      splitType: (() { final guardedValue = map['splitType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
