// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../model_primary_container_additional_model_data_source_s3_data_source/model_primary_container_additional_model_data_source_s3_data_source.dart';

class ModelPrimaryContainerAdditionalModelDataSource {
  /// Custom name for the additional model data source object. It will be stored in `/opt/ml/additional-model-data-sources/<channel_name>/`.
  final String channelName;

  /// S3 location of model data to deploy. See S3 Data Source.
  final List<ModelPrimaryContainerAdditionalModelDataSourceS3DataSource>
      s3DataSources;

  ModelPrimaryContainerAdditionalModelDataSource({
    required this.channelName,
    required this.s3DataSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelName'] = channelName;
    map['s3DataSources'] = pulumi.Input.encodeList<
        ModelPrimaryContainerAdditionalModelDataSourceS3DataSource,
        Map<String, dynamic>>(s3DataSources, (value) => value.toMap());
    return map;
  }

  factory ModelPrimaryContainerAdditionalModelDataSource.fromMap(
      Map<String, dynamic> map) {
    return ModelPrimaryContainerAdditionalModelDataSource(
      channelName: map['channelName'] as String,
      s3DataSources: pulumi.Input.decodeList<
              ModelPrimaryContainerAdditionalModelDataSourceS3DataSource>(
          map['s3DataSources'],
          (value) => ModelPrimaryContainerAdditionalModelDataSourceS3DataSource
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
