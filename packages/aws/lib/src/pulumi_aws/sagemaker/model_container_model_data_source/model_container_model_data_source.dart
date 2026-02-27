// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../model_container_model_data_source_s3_data_source/model_container_model_data_source_s3_data_source.dart';

class ModelContainerModelDataSource {
  /// S3 location of model data to deploy. See S3 Data Source.
  final List<ModelContainerModelDataSourceS3DataSource> s3DataSources;

  ModelContainerModelDataSource({
    required this.s3DataSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3DataSources'] = pulumi.Input.encodeList<
        ModelContainerModelDataSourceS3DataSource,
        Map<String, dynamic>>(s3DataSources, (value) => value.toMap());
    return map;
  }

  factory ModelContainerModelDataSource.fromMap(Map<String, dynamic> map) {
    return ModelContainerModelDataSource(
      s3DataSources:
          pulumi.Input.decodeList<ModelContainerModelDataSourceS3DataSource>(
              map['s3DataSources'],
              (value) => ModelContainerModelDataSourceS3DataSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
