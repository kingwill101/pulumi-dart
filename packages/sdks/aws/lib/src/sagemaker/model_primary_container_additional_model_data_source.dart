// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_primary_container_additional_model_data_source_s3_data_source.dart';

class ModelPrimaryContainerAdditionalModelDataSource {
  /// Custom name for the additional model data source object. It will be stored in `/opt/ml/additional-model-data-sources/&lt;channel_name&gt;/`.
  final pulumi.Input<String> channelName;
  /// S3 location of model data to deploy. See S3 Data Source.
  final pulumi.Input<List<ModelPrimaryContainerAdditionalModelDataSourceS3DataSource>> s3DataSources;

  /// Creates a new [ModelPrimaryContainerAdditionalModelDataSource].
  /// [channelName] Custom name for the additional model data source object. It will be stored in `/opt/ml/additional-model-data-sources/&lt;channel_name&gt;/`.
  /// [s3DataSources] S3 location of model data to deploy. See S3 Data Source.
  ModelPrimaryContainerAdditionalModelDataSource({
    required this.channelName,
    required this.s3DataSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      's3DataSources': pulumi.Input.mapInputValue<List<ModelPrimaryContainerAdditionalModelDataSourceS3DataSource>, List<Map<String, dynamic>>>(s3DataSources, (value) => pulumi.Input.encodeList<ModelPrimaryContainerAdditionalModelDataSourceS3DataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ModelPrimaryContainerAdditionalModelDataSource.fromMap(Map<String, dynamic> map) {
    return ModelPrimaryContainerAdditionalModelDataSource(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      s3DataSources: pulumi.Input.fromValue(pulumi.Input.decodeList<ModelPrimaryContainerAdditionalModelDataSourceS3DataSource>(map['s3DataSources']!, (value) => ModelPrimaryContainerAdditionalModelDataSourceS3DataSource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

