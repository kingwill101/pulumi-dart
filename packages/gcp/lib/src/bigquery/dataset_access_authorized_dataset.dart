// ignore_for_file: unused_element, unnecessary_cast

import 'dataset_access_authorized_dataset_dataset.dart';

class DatasetAccessAuthorizedDataset {
  /// The dataset this entry applies to
  /// Structure is documented below.
  final DatasetAccessAuthorizedDatasetDataset dataset;

  /// Which resources in the dataset this entry applies to. Currently, only views are supported,
  /// but additional target types may be added in the future. Possible values: VIEWS
  final List<String> targetTypes;

  /// Creates a new [DatasetAccessAuthorizedDataset].
  /// [dataset] The dataset this entry applies to
  /// [targetTypes] Which resources in the dataset this entry applies to. Currently, only views are supported,
  DatasetAccessAuthorizedDataset({
    required this.dataset,
    required this.targetTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset.toMap(),
      'targetTypes': targetTypes,
    };
  }

  factory DatasetAccessAuthorizedDataset.fromMap(Map<String, dynamic> map) {
    return DatasetAccessAuthorizedDataset(
      dataset: DatasetAccessAuthorizedDatasetDataset.fromMap(
        (map['dataset'] as Map).cast<String, dynamic>(),
      ),
      targetTypes: (map['targetTypes'] as List).cast<String>(),
    );
  }
}
