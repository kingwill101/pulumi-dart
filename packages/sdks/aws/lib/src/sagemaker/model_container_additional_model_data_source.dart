// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_container_additional_model_data_source_s3_data_source.dart';

class ModelContainerAdditionalModelDataSource {
  /// Custom name for the additional model data source object. It will be stored in `/opt/ml/additional-model-data-sources/<channel_name>/`.
  final pulumi.Input<String> channelName;
  /// S3 location of model data to deploy. See S3 Data Source.
  final pulumi.Input<List<ModelContainerAdditionalModelDataSourceS3DataSource>> s3DataSources;

  /// Creates a new [ModelContainerAdditionalModelDataSource].
  /// [channelName] Custom name for the additional model data source object. It will be stored in `/opt/ml/additional-model-data-sources/<channel_name>/`.
  /// [s3DataSources] S3 location of model data to deploy. See S3 Data Source.
  ModelContainerAdditionalModelDataSource({
    required this.channelName,
    required this.s3DataSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      's3DataSources': pulumi.Input.mapInputValue<List<ModelContainerAdditionalModelDataSourceS3DataSource>, List<Map<String, dynamic>>>(s3DataSources, (value) => pulumi.Input.encodeList<ModelContainerAdditionalModelDataSourceS3DataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ModelContainerAdditionalModelDataSource.fromMap(Map<String, dynamic> map) {
    return ModelContainerAdditionalModelDataSource(
      channelName: (map['channelName'] as String).input(),
      s3DataSources: (pulumi.Input.decodeList<ModelContainerAdditionalModelDataSourceS3DataSource>(map['s3DataSources']!, (value) => ModelContainerAdditionalModelDataSourceS3DataSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

