// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_container_model_data_source_s3_data_source.dart';

class ModelContainerModelDataSource {
  /// S3 location of model data to deploy. See S3 Data Source.
  final pulumi.Input<List<ModelContainerModelDataSourceS3DataSource>> s3DataSources;

  /// Creates a new [ModelContainerModelDataSource].
  /// [s3DataSources] S3 location of model data to deploy. See S3 Data Source.
  ModelContainerModelDataSource({
    required this.s3DataSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3DataSources': pulumi.Input.mapInputValue<List<ModelContainerModelDataSourceS3DataSource>, List<Map<String, dynamic>>>(s3DataSources, (value) => pulumi.Input.encodeList<ModelContainerModelDataSourceS3DataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ModelContainerModelDataSource.fromMap(Map<String, dynamic> map) {
    return ModelContainerModelDataSource(
      s3DataSources: pulumi.Input.fromValue(pulumi.Input.decodeList<ModelContainerModelDataSourceS3DataSource>(map['s3DataSources']!, (value) => ModelContainerModelDataSourceS3DataSource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

