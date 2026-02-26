// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInsightsDatasetConfig.
class GetInsightsDatasetConfigArgs {
  /// The user-defined ID of the DatasetConfig
  final Input<String> datasetConfigId;

  /// The location of the Dataset Config.
  final Input<String> location;

  /// The name of the GCP project in which dataset config exists. Can be configured through config as well.
  final Input<String>? project;

  GetInsightsDatasetConfigArgs({
    required this.datasetConfigId,
    required this.location,
    this.project,
  });

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
      datasetConfigId: Input.asInput<String>(map['datasetConfigId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
