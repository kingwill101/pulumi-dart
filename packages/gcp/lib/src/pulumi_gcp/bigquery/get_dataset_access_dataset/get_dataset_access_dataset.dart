// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_dataset_access_dataset_dataset/get_dataset_access_dataset_dataset.dart';

class GetDatasetAccessDataset {
  /// The dataset this entry applies to
  final List<GetDatasetAccessDatasetDataset> datasets;

  /// Which resources in the dataset this entry applies to. Currently, only views are supported,
  /// but additional target types may be added in the future. Possible values: VIEWS
  final List<String> targetTypes;

  GetDatasetAccessDataset({
    required this.datasets,
    required this.targetTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasets'] = pulumi.Input.encodeList<GetDatasetAccessDatasetDataset,
        Map<String, dynamic>>(datasets, (value) => value.toMap());
    map['targetTypes'] = targetTypes;
    return map;
  }

  factory GetDatasetAccessDataset.fromMap(Map<String, dynamic> map) {
    return GetDatasetAccessDataset(
      datasets: pulumi.Input.decodeList<GetDatasetAccessDatasetDataset>(
          map['datasets'],
          (value) => GetDatasetAccessDatasetDataset.fromMap(
              (value as Map).cast<String, dynamic>())),
      targetTypes: (map['targetTypes'] as List).cast<String>(),
    );
  }
}
