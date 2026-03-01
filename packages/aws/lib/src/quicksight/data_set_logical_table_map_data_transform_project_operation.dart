// ignore_for_file: unused_element, unnecessary_cast

class DataSetLogicalTableMapDataTransformProjectOperation {
  /// Projected columns.
  final List<String> projectedColumns;

  /// Creates a new [DataSetLogicalTableMapDataTransformProjectOperation].
  /// [projectedColumns] Projected columns.
  DataSetLogicalTableMapDataTransformProjectOperation({
    required this.projectedColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'projectedColumns': projectedColumns};
  }

  factory DataSetLogicalTableMapDataTransformProjectOperation.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataSetLogicalTableMapDataTransformProjectOperation(
      projectedColumns: (map['projectedColumns'] as List).cast<String>(),
    );
  }
}
