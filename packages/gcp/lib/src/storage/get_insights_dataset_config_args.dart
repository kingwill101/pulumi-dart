// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_insights_dataset_config_get_insights_dataset_config_args_doc}
/// Arguments for getInsightsDatasetConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_get_insights_dataset_config_get_insights_dataset_config_args_doc}
class GetInsightsDatasetConfigArgs {
  /// The user-defined ID of the DatasetConfig
  final pulumi.Input<String> datasetConfigId;

  /// The location of the Dataset Config.
  final pulumi.Input<String> location;

  /// The name of the GCP project in which dataset config exists. Can be configured through config as well.
  final pulumi.Input<String>? project;

  /// Creates a new [GetInsightsDatasetConfigArgs].
  /// [datasetConfigId] The user-defined ID of the DatasetConfig
  /// [location] The location of the Dataset Config.
  /// [project] The name of the GCP project in which dataset config exists. Can be configured through config as well.
  GetInsightsDatasetConfigArgs({
    required String datasetConfigId,
    required String location,
    String? project,
  })  : datasetConfigId = pulumi.Input.asInput<String>(datasetConfigId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetConfigId'] = datasetConfigId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInsightsDatasetConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetInsightsDatasetConfigArgs(
      datasetConfigId: map['datasetConfigId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
