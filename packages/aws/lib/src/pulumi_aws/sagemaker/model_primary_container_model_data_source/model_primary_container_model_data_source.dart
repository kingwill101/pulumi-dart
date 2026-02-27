// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../model_primary_container_model_data_source_s3_data_source/model_primary_container_model_data_source_s3_data_source.dart';

class ModelPrimaryContainerModelDataSource {
  /// S3 location of model data to deploy. See S3 Data Source.
  final List<ModelPrimaryContainerModelDataSourceS3DataSource> s3DataSources;

  ModelPrimaryContainerModelDataSource({
    required this.s3DataSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3DataSources'] = pulumi.Input.encodeList<
        ModelPrimaryContainerModelDataSourceS3DataSource,
        Map<String, dynamic>>(s3DataSources, (value) => value.toMap());
    return map;
  }

  factory ModelPrimaryContainerModelDataSource.fromMap(
      Map<String, dynamic> map) {
    return ModelPrimaryContainerModelDataSource(
      s3DataSources: pulumi.Input.decodeList<
              ModelPrimaryContainerModelDataSourceS3DataSource>(
          map['s3DataSources'],
          (value) => ModelPrimaryContainerModelDataSourceS3DataSource.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
