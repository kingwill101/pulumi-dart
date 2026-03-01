// ignore_for_file: unused_element, unnecessary_cast

class DataSetLogicalTableMapDataTransformFilterOperation {
  /// An expression that must evaluate to a Boolean value. Rows for which the expression evaluates to true are kept in the dataset.
  final String conditionExpression;

  /// Creates a new [DataSetLogicalTableMapDataTransformFilterOperation].
  /// [conditionExpression] An expression that must evaluate to a Boolean value. Rows for which the expression evaluates to true are kept in the dataset.
  DataSetLogicalTableMapDataTransformFilterOperation({
    required this.conditionExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'conditionExpression': conditionExpression};
  }

  factory DataSetLogicalTableMapDataTransformFilterOperation.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataSetLogicalTableMapDataTransformFilterOperation(
      conditionExpression: map['conditionExpression'] as String,
    );
  }
}
