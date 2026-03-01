// ignore_for_file: unused_element, unnecessary_cast

import 'model_container_model_data_source_s3_data_source_model_access_config.dart';

class ModelContainerModelDataSourceS3DataSource {
  /// How the model data is prepared. Allowed values are: `None` and `Gzip`.
  final String compressionType;
  /// Specifies the access configuration file for the ML model. You can explicitly accept the model end-user license agreement (EULA) within the [`model_access_config` configuration block]. See Model Access Config.
  final ModelContainerModelDataSourceS3DataSourceModelAccessConfig? modelAccessConfig;
  /// Type of model data to deploy. Allowed values are: `S3Object` and `S3Prefix`.
  final String s3DataType;
  /// The S3 path of model data to deploy.
  final String s3Uri;

  /// Creates a new [ModelContainerModelDataSourceS3DataSource].
  /// [compressionType] How the model data is prepared. Allowed values are: `None` and `Gzip`.
  /// [modelAccessConfig] Specifies the access configuration file for the ML model. You can explicitly accept the model end-user license agreement (EULA) within the [`model_access_config` configuration block]. See Model Access Config.
  /// [s3DataType] Type of model data to deploy. Allowed values are: `S3Object` and `S3Prefix`.
  /// [s3Uri] The S3 path of model data to deploy.
  ModelContainerModelDataSourceS3DataSource({
    required this.compressionType,
    this.modelAccessConfig,
    required this.s3DataType,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionType': compressionType,
      'modelAccessConfig': ?modelAccessConfig == null ? null : modelAccessConfig!.toMap(),
      's3DataType': s3DataType,
      's3Uri': s3Uri,
    };
  }

  factory ModelContainerModelDataSourceS3DataSource.fromMap(Map<String, dynamic> map) {
    return ModelContainerModelDataSourceS3DataSource(
      compressionType: map['compressionType'] as String,
      modelAccessConfig: map['modelAccessConfig'] == null ? null : ModelContainerModelDataSourceS3DataSourceModelAccessConfig.fromMap((map['modelAccessConfig'] as Map).cast<String, dynamic>()),
      s3DataType: map['s3DataType'] as String,
      s3Uri: map['s3Uri'] as String,
    );
  }
}

