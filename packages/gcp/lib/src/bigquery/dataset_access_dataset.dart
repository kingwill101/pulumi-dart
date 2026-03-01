// ignore_for_file: unused_element, unnecessary_cast

import 'dataset_access_dataset_dataset.dart';

class DatasetAccessDataset {
  /// The dataset this entry applies to
  /// Structure is documented below.
  final DatasetAccessDatasetDataset dataset;
  /// Which resources in the dataset this entry applies to. Currently, only views are supported,
  /// but additional target types may be added in the future. Possible values: VIEWS
  final List<String> targetTypes;

  /// Creates a new [DatasetAccessDataset].
  /// [dataset] The dataset this entry applies to
  /// [targetTypes] Which resources in the dataset this entry applies to. Currently, only views are supported,
  DatasetAccessDataset({
    required this.dataset,
    required this.targetTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset.toMap(),
      'targetTypes': targetTypes,
    };
  }

  factory DatasetAccessDataset.fromMap(Map<String, dynamic> map) {
    return DatasetAccessDataset(
      dataset: DatasetAccessDatasetDataset.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      targetTypes: (map['targetTypes'] as List).cast<String>(),
    );
  }
}

