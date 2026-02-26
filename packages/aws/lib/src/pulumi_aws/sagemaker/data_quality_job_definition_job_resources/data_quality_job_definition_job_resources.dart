// ignore_for_file: unused_element, unnecessary_cast

import '../data_quality_job_definition_job_resources_cluster_config/data_quality_job_definition_job_resources_cluster_config.dart';

class DataQualityJobDefinitionJobResources {
  /// The configuration for the cluster resources used to run the processing job. Fields are documented below.
  final DataQualityJobDefinitionJobResourcesClusterConfig clusterConfig;

  DataQualityJobDefinitionJobResources({
    required this.clusterConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterConfig'] = clusterConfig.toMap();
    return map;
  }

  factory DataQualityJobDefinitionJobResources.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionJobResources(
      clusterConfig: DataQualityJobDefinitionJobResourcesClusterConfig.fromMap(
          (map['clusterConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
