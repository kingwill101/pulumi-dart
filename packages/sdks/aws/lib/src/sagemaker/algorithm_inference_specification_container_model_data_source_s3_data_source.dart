// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_inference_specification_container_model_data_source_s3_data_source_hub_access_config.dart';
import 'algorithm_inference_specification_container_model_data_source_s3_data_source_model_access_config.dart';

class AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSource {
  final pulumi.Input<String> compressionType;
  final pulumi.Input<String?>? etag;
  final pulumi.Input<AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSourceHubAccessConfig?>? hubAccessConfig;
  /// ETag of the manifest file.
  final pulumi.Input<String?>? manifestEtag;
  /// S3 or HTTPS URI of the manifest file.
  final pulumi.Input<String?>? manifestS3Uri;
  final pulumi.Input<AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSourceModelAccessConfig?>? modelAccessConfig;
  final pulumi.Input<String> s3DataType;
  final pulumi.Input<String> s3Uri;

  /// Creates a new [AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSource].
  /// [compressionType] Required.
  /// [etag] Optional.
  /// [hubAccessConfig] Optional.
  /// [manifestEtag] ETag of the manifest file.
  /// [manifestS3Uri] S3 or HTTPS URI of the manifest file.
  /// [modelAccessConfig] Optional.
  /// [s3DataType] Required.
  /// [s3Uri] Required.
  const AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSource({
    required this.compressionType,
    this.etag,
    this.hubAccessConfig,
    this.manifestEtag,
    this.manifestS3Uri,
    this.modelAccessConfig,
    required this.s3DataType,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionType': compressionType,
      'etag': ?etag,
      'hubAccessConfig': ?pulumi.Input.mapOptionalInputValue<AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSourceHubAccessConfig, Map<String, dynamic>>(hubAccessConfig, (value) => value.toMap()),
      'manifestEtag': ?manifestEtag,
      'manifestS3Uri': ?manifestS3Uri,
      'modelAccessConfig': ?pulumi.Input.mapOptionalInputValue<AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSourceModelAccessConfig, Map<String, dynamic>>(modelAccessConfig, (value) => value.toMap()),
      's3DataType': s3DataType,
      's3Uri': s3Uri,
    };
  }

  factory AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSource.fromMap(Map<String, dynamic> map) {
    return AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSource(
      compressionType: pulumi.Input.fromValue(map['compressionType'] as String),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubAccessConfig: (() { final guardedValue = map['hubAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSourceHubAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      manifestEtag: (() { final guardedValue = map['manifestEtag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifestS3Uri: (() { final guardedValue = map['manifestS3Uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelAccessConfig: (() { final guardedValue = map['modelAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSourceModelAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3DataType: pulumi.Input.fromValue(map['s3DataType'] as String),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
