// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../model_container_additional_model_data_source_s3_data_source/model_container_additional_model_data_source_s3_data_source.dart';

class ModelContainerAdditionalModelDataSource {
  /// Custom name for the additional model data source object. It will be stored in `/opt/ml/additional-model-data-sources/<channel_name>/`.
  final String channelName;

  /// S3 location of model data to deploy. See S3 Data Source.
  final List<ModelContainerAdditionalModelDataSourceS3DataSource> s3DataSources;

  ModelContainerAdditionalModelDataSource({
    required this.channelName,
    required this.s3DataSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelName'] = channelName;
    map['s3DataSources'] = pulumi.Input.encodeList<
        ModelContainerAdditionalModelDataSourceS3DataSource,
        Map<String, dynamic>>(s3DataSources, (value) => value.toMap());
    return map;
  }

  factory ModelContainerAdditionalModelDataSource.fromMap(
      Map<String, dynamic> map) {
    return ModelContainerAdditionalModelDataSource(
      channelName: map['channelName'] as String,
      s3DataSources: pulumi.Input.decodeList<
              ModelContainerAdditionalModelDataSourceS3DataSource>(
          map['s3DataSources'],
          (value) =>
              ModelContainerAdditionalModelDataSourceS3DataSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
