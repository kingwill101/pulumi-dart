// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInsightsDatasetConfig.
class GetInsightsDatasetConfigArgs {
  /// The user-defined ID of the DatasetConfig
  final pulumi.Input<String> datasetConfigId;

  /// The location of the Dataset Config.
  final pulumi.Input<String> location;

  /// The name of the GCP project in which dataset config exists. Can be configured through config as well.
  final pulumi.Input<String>? project;

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
      datasetConfigId: pulumi.Input.asInput<String>(map['datasetConfigId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
