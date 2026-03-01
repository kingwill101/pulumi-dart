// ignore_for_file: unused_element, unnecessary_cast

import 'data_set_logical_table_map_source_join_instruction_left_join_key_properties.dart';
import 'data_set_logical_table_map_source_join_instruction_right_join_key_properties.dart';

class DataSetLogicalTableMapSourceJoinInstruction {
  /// Join key properties of the left operand. See left_join_key_properties.
  final DataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties? leftJoinKeyProperties;
  /// Operand on the left side of a join.
  final String leftOperand;
  /// Join instructions provided in the ON clause of a join.
  final String onClause;
  /// Join key properties of the right operand. See right_join_key_properties.
  final DataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties? rightJoinKeyProperties;
  /// Operand on the right side of a join.
  final String rightOperand;
  /// Type of join. Valid values are `INNER`, `OUTER`, `LEFT`, and `RIGHT`.
  final String type;

  /// Creates a new [DataSetLogicalTableMapSourceJoinInstruction].
  /// [leftJoinKeyProperties] Join key properties of the left operand. See left_join_key_properties.
  /// [leftOperand] Operand on the left side of a join.
  /// [onClause] Join instructions provided in the ON clause of a join.
  /// [rightJoinKeyProperties] Join key properties of the right operand. See right_join_key_properties.
  /// [rightOperand] Operand on the right side of a join.
  /// [type] Type of join. Valid values are `INNER`, `OUTER`, `LEFT`, and `RIGHT`.
  DataSetLogicalTableMapSourceJoinInstruction({
    this.leftJoinKeyProperties,
    required this.leftOperand,
    required this.onClause,
    this.rightJoinKeyProperties,
    required this.rightOperand,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leftJoinKeyProperties': ?leftJoinKeyProperties == null ? null : leftJoinKeyProperties!.toMap(),
      'leftOperand': leftOperand,
      'onClause': onClause,
      'rightJoinKeyProperties': ?rightJoinKeyProperties == null ? null : rightJoinKeyProperties!.toMap(),
      'rightOperand': rightOperand,
      'type': type,
    };
  }

  factory DataSetLogicalTableMapSourceJoinInstruction.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapSourceJoinInstruction(
      leftJoinKeyProperties: map['leftJoinKeyProperties'] == null ? null : DataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties.fromMap((map['leftJoinKeyProperties'] as Map).cast<String, dynamic>()),
      leftOperand: map['leftOperand'] as String,
      onClause: map['onClause'] as String,
      rightJoinKeyProperties: map['rightJoinKeyProperties'] == null ? null : DataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties.fromMap((map['rightJoinKeyProperties'] as Map).cast<String, dynamic>()),
      rightOperand: map['rightOperand'] as String,
      type: map['type'] as String,
    );
  }
}

