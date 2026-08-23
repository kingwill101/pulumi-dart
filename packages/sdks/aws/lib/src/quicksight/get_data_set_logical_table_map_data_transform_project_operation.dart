// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetLogicalTableMapDataTransformProjectOperation {
  final pulumi.Input<List<String>> projectedColumns;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformProjectOperation].
  /// [projectedColumns] Required.
  const GetDataSetLogicalTableMapDataTransformProjectOperation({
    required this.projectedColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectedColumns': projectedColumns,
    };
  }

  factory GetDataSetLogicalTableMapDataTransformProjectOperation.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformProjectOperation(
      projectedColumns: pulumi.Input.fromValue((map['projectedColumns'] as List).cast<String>()),
    );
  }
}
