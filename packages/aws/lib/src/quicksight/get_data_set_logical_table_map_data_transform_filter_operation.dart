// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetLogicalTableMapDataTransformFilterOperation {
  final String conditionExpression;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformFilterOperation].
  /// [conditionExpression] Required.
  GetDataSetLogicalTableMapDataTransformFilterOperation({
    required this.conditionExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditionExpression'] = conditionExpression;
    return map;
  }

  factory GetDataSetLogicalTableMapDataTransformFilterOperation.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformFilterOperation(
      conditionExpression: map['conditionExpression'] as String,
    );
  }
}
