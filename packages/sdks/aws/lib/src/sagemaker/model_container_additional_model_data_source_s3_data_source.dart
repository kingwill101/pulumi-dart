// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_container_additional_model_data_source_s3_data_source_model_access_config.dart';

class ModelContainerAdditionalModelDataSourceS3DataSource {
  /// How the model data is prepared. Allowed values are: `None` and `Gzip`.
  final pulumi.Input<String> compressionType;
  /// Specifies the access configuration file for the ML model. You can explicitly accept the model end-user license agreement (EULA) within the [`model_access_config` configuration block]. See Model Access Config.
  final pulumi.Input<ModelContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig>? modelAccessConfig;
  /// Type of model data to deploy. Allowed values are: `S3Object` and `S3Prefix`.
  final pulumi.Input<String> s3DataType;
  /// The S3 path of model data to deploy.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [ModelContainerAdditionalModelDataSourceS3DataSource].
  /// [compressionType] How the model data is prepared. Allowed values are: `None` and `Gzip`.
  /// [modelAccessConfig] Specifies the access configuration file for the ML model. You can explicitly accept the model end-user license agreement (EULA) within the [`model_access_config` configuration block]. See Model Access Config.
  /// [s3DataType] Type of model data to deploy. Allowed values are: `S3Object` and `S3Prefix`.
  /// [s3Uri] The S3 path of model data to deploy.
  ModelContainerAdditionalModelDataSourceS3DataSource({
    required this.compressionType,
    this.modelAccessConfig,
    required this.s3DataType,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionType': compressionType,
      'modelAccessConfig': ?pulumi.Input.mapOptionalInputValue<ModelContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig, Map<String, dynamic>>(modelAccessConfig, (value) => value.toMap()),
      's3DataType': s3DataType,
      's3Uri': s3Uri,
    };
  }

  factory ModelContainerAdditionalModelDataSourceS3DataSource.fromMap(Map<String, dynamic> map) {
    return ModelContainerAdditionalModelDataSourceS3DataSource(
      compressionType: pulumi.Input.fromValue(map['compressionType'] as String),
      modelAccessConfig: (() { final guardedValue = map['modelAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3DataType: pulumi.Input.fromValue(map['s3DataType'] as String),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}

