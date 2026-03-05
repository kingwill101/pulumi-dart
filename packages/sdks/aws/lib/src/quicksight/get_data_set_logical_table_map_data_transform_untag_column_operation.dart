// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetLogicalTableMapDataTransformUntagColumnOperation {
  final pulumi.Input<String> columnName;
  final pulumi.Input<List<String>> tagNames;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformUntagColumnOperation].
  /// [columnName] Required.
  /// [tagNames] Required.
  GetDataSetLogicalTableMapDataTransformUntagColumnOperation({
    required this.columnName,
    required this.tagNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'tagNames': tagNames,
    };
  }

  factory GetDataSetLogicalTableMapDataTransformUntagColumnOperation.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformUntagColumnOperation(
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
      tagNames: pulumi.Input.fromValue((map['tagNames'] as List).cast<String>()),
    );
  }
}

