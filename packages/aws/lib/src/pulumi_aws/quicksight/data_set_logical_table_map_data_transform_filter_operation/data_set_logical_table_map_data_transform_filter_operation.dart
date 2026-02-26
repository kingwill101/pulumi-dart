// ignore_for_file: unused_element, unnecessary_cast

class DataSetLogicalTableMapDataTransformFilterOperation {
  /// An expression that must evaluate to a Boolean value. Rows for which the expression evaluates to true are kept in the dataset.
  final String conditionExpression;

  DataSetLogicalTableMapDataTransformFilterOperation({
    required this.conditionExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditionExpression'] = conditionExpression;
    return map;
  }

  factory DataSetLogicalTableMapDataTransformFilterOperation.fromMap(
      Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformFilterOperation(
      conditionExpression: map['conditionExpression'] as String,
    );
  }
}
