// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'dataset_access_entry_target_types_item.dart';
import 'dataset_reference.dart';

class DatasetAccessEntry {
  /// [Required] The dataset this entry applies to.
  final DatasetReference? dataset;
  final List<DatasetAccessEntryTargetTypesItem>? targetTypes;

  DatasetAccessEntry({
    this.dataset,
    this.targetTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetValue = dataset;
    if (datasetValue != null) {
      map['dataset'] = datasetValue.toMap();
    }
    final targetTypesValue = targetTypes;
    if (targetTypesValue != null) {
      map['targetTypes'] =
          Input.encodeList<DatasetAccessEntryTargetTypesItem, String>(
              targetTypesValue, (value) => value.value);
    }
    return map;
  }

  factory DatasetAccessEntry.fromMap(Map<String, dynamic> map) {
    return DatasetAccessEntry(
      dataset: map['dataset'] == null
          ? null
          : DatasetReference.fromMap(
              (map['dataset'] as Map).cast<String, dynamic>()),
      targetTypes: map['targetTypes'] == null
          ? null
          : Input.decodeList<DatasetAccessEntryTargetTypesItem>(
              map['targetTypes'],
              (value) =>
                  DatasetAccessEntryTargetTypesItem.fromValue(value as String)),
    );
  }
}
