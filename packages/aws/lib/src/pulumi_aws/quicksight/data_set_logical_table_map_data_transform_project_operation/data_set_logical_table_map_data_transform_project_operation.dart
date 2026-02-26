// ignore_for_file: unused_element, unnecessary_cast

class DataSetLogicalTableMapDataTransformProjectOperation {
  /// Projected columns.
  final List<String> projectedColumns;

  DataSetLogicalTableMapDataTransformProjectOperation({
    required this.projectedColumns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectedColumns'] = projectedColumns;
    return map;
  }

  factory DataSetLogicalTableMapDataTransformProjectOperation.fromMap(
      Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformProjectOperation(
      projectedColumns: (map['projectedColumns'] as List).cast<String>(),
    );
  }
}
