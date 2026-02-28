// ignore_for_file: unused_element, unnecessary_cast

import 'dataset_reference_response.dart';

class DatasetAccessEntryResponse {
  /// [Required] The dataset this entry applies to.
  final DatasetReferenceResponse dataset;
  final List<String> targetTypes;

  /// Creates a new [DatasetAccessEntryResponse].
  /// [dataset] [Required] The dataset this entry applies to.
  /// [targetTypes] Required.
  DatasetAccessEntryResponse({
    required this.dataset,
    required this.targetTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataset'] = dataset.toMap();
    map['targetTypes'] = targetTypes;
    return map;
  }

  factory DatasetAccessEntryResponse.fromMap(Map<String, dynamic> map) {
    return DatasetAccessEntryResponse(
      dataset: DatasetReferenceResponse.fromMap(
          (map['dataset'] as Map).cast<String, dynamic>()),
      targetTypes: (map['targetTypes'] as List).cast<String>(),
    );
  }
}
