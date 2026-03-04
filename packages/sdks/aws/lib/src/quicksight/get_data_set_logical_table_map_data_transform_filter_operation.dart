// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetLogicalTableMapDataTransformFilterOperation {
  final pulumi.Input<String> conditionExpression;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformFilterOperation].
  /// [conditionExpression] Required.
  GetDataSetLogicalTableMapDataTransformFilterOperation({
    required this.conditionExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'conditionExpression': conditionExpression};
  }

  factory GetDataSetLogicalTableMapDataTransformFilterOperation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataSetLogicalTableMapDataTransformFilterOperation(
      conditionExpression: pulumi.Input.fromValue(
        map['conditionExpression'] as String,
      ),
    );
  }
}
