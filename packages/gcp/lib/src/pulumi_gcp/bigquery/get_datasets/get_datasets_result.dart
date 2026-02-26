// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_datasets_dataset/get_datasets_dataset.dart';

/// Result data returned by getDatasets.
class GetDatasetsResult {
  /// A list of all retrieved BigQuery datasets. Structure is defined below.
  final List<GetDatasetsDataset> datasets;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? project;

  GetDatasetsResult({
    required this.datasets,
    required this.id,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasets'] =
        Input.encodeList<GetDatasetsDataset, Map<String, dynamic>>(
            datasets, (value) => value.toMap());
    map['id'] = id;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatasetsResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetsResult(
      datasets: Input.decodeList<GetDatasetsDataset>(
          map['datasets'],
          (value) => GetDatasetsDataset.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
