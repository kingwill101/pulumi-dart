// ignore_for_file: unused_element, unnecessary_cast

import '../data_set_logical_table_map_source_join_instruction/data_set_logical_table_map_source_join_instruction.dart';

class DataSetLogicalTableMapSource {
  /// ARN of the parent data set.
  final String? dataSetArn;

  /// Specifies the result of a join of two logical tables. See join_instruction.
  final DataSetLogicalTableMapSourceJoinInstruction? joinInstruction;

  /// Physical table ID.
  final String? physicalTableId;

  DataSetLogicalTableMapSource({
    this.dataSetArn,
    this.joinInstruction,
    this.physicalTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataSetArnValue = dataSetArn;
    if (dataSetArnValue != null) {
      map['dataSetArn'] = dataSetArnValue;
    }
    final joinInstructionValue = joinInstruction;
    if (joinInstructionValue != null) {
      map['joinInstruction'] = joinInstructionValue.toMap();
    }
    final physicalTableIdValue = physicalTableId;
    if (physicalTableIdValue != null) {
      map['physicalTableId'] = physicalTableIdValue;
    }
    return map;
  }

  factory DataSetLogicalTableMapSource.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapSource(
      dataSetArn:
          map['dataSetArn'] == null ? null : map['dataSetArn'] as String,
      joinInstruction: map['joinInstruction'] == null
          ? null
          : DataSetLogicalTableMapSourceJoinInstruction.fromMap(
              (map['joinInstruction'] as Map).cast<String, dynamic>()),
      physicalTableId: map['physicalTableId'] == null
          ? null
          : map['physicalTableId'] as String,
    );
  }
}
