// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_job_definition_job_resources_cluster_config.dart';

class DataQualityJobDefinitionJobResources {
  /// The configuration for the cluster resources used to run the processing job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionJobResourcesClusterConfig> clusterConfig;

  /// Creates a new [DataQualityJobDefinitionJobResources].
  /// [clusterConfig] The configuration for the cluster resources used to run the processing job. Fields are documented below.
  DataQualityJobDefinitionJobResources({
    required this.clusterConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterConfig': pulumi.Input.mapInputValue<DataQualityJobDefinitionJobResourcesClusterConfig, Map<String, dynamic>>(clusterConfig, (value) => value.toMap()),
    };
  }

  factory DataQualityJobDefinitionJobResources.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionJobResources(
      clusterConfig: (DataQualityJobDefinitionJobResourcesClusterConfig.fromMap((map['clusterConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

