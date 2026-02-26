// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetLogicalTableMapDataTransformProjectOperation {
  final List<String> projectedColumns;

  GetDataSetLogicalTableMapDataTransformProjectOperation({
    required this.projectedColumns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectedColumns'] = projectedColumns;
    return map;
  }

  factory GetDataSetLogicalTableMapDataTransformProjectOperation.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformProjectOperation(
      projectedColumns: (map['projectedColumns'] as List).cast<String>(),
    );
  }
}
