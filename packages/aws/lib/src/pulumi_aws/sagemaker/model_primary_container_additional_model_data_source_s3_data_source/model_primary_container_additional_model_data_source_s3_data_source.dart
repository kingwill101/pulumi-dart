// ignore_for_file: unused_element, unnecessary_cast

import '../model_primary_container_additional_model_data_source_s3_data_source_model_access_config/model_primary_container_additional_model_data_source_s3_data_source_model_access_config.dart';

class ModelPrimaryContainerAdditionalModelDataSourceS3DataSource {
  /// How the model data is prepared. Allowed values are: `None` and `Gzip`.
  final String compressionType;

  /// Specifies the access configuration file for the ML model. You can explicitly accept the model end-user license agreement (EULA) within the [`model_access_config` configuration block]. See Model Access Config.
  final ModelPrimaryContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig?
      modelAccessConfig;

  /// Type of model data to deploy. Allowed values are: `S3Object` and `S3Prefix`.
  final String s3DataType;

  /// The S3 path of model data to deploy.
  final String s3Uri;

  ModelPrimaryContainerAdditionalModelDataSourceS3DataSource({
    required this.compressionType,
    this.modelAccessConfig,
    required this.s3DataType,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compressionType'] = compressionType;
    final modelAccessConfigValue = modelAccessConfig;
    if (modelAccessConfigValue != null) {
      map['modelAccessConfig'] = modelAccessConfigValue.toMap();
    }
    map['s3DataType'] = s3DataType;
    map['s3Uri'] = s3Uri;
    return map;
  }

  factory ModelPrimaryContainerAdditionalModelDataSourceS3DataSource.fromMap(
      Map<String, dynamic> map) {
    return ModelPrimaryContainerAdditionalModelDataSourceS3DataSource(
      compressionType: map['compressionType'] as String,
      modelAccessConfig: map['modelAccessConfig'] == null
          ? null
          : ModelPrimaryContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig
              .fromMap(
                  (map['modelAccessConfig'] as Map).cast<String, dynamic>()),
      s3DataType: map['s3DataType'] as String,
      s3Uri: map['s3Uri'] as String,
    );
  }
}
